.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;,
        Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;,
        Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;,
        Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;,
        Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    }
.end annotation


# static fields
.field static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNUSED_FP:Z = true

.field static final DEBUG:Z

.field private static final DEFAULT_FP_MAX_TEMPLATES_PER_USER:I = 0x4

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static mMaxTemplatesNumber:I

.field private static mSemAcquiredNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSemErrorNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSemEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSemFingerprintDQAManager:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

.field private static mSemRequestCmdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mFpDaemonVersion:[B

.field private mFpSensorInfo:[B

.field private mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsEnrolling:Z

.field private mIsFirstSensorCheck:Z

.field private mIsGestureWork:Z

.field private mIsSensorError:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mLatestSensorStatus:I

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPreviousAuthStatus:I

.field private mRequestOutBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestResult:I

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

.field private mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

.field private mSemIsSupportedSwipeEnroll:Z

.field private mSemLockoutRemainingTime:J

.field private mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

.field private mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mSemSensorActiveArea:Ljava/lang/String;

.field private mSemSensorAreaHeight:Ljava/lang/String;

.field private mSemSensorAreaWidth:Ljava/lang/String;

.field private mSemSensorDraggingArea:Ljava/lang/String;

.field private mSemSensorImageSize:Ljava/lang/String;

.field private mSemSensorMarginBottom:Ljava/lang/String;

.field private mSemSensorMarginLeft:Ljava/lang/String;

.field private mSemTouchCount:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSyncObj:Ljava/lang/Object;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

.field private mToken:Landroid/os/IBinder;

.field private mUnknownFingerprints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemFingerprintDQAManager:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemLockoutRemainingTime:J

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsFirstSensorCheck:Z

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsSensorError:Z

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsGestureWork:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPreviousAuthStatus:I

    const-string v0, "9"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    const-string v0, "4"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    const-string v0, "13.77"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    const-string v0, "13.00"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    const-string v0, "14.80"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorActiveArea:Ljava/lang/String;

    const-string v0, "5.00"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorDraggingArea:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040218

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semReadSensorConfig()V

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemFingerprintDQAManager:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemAcquiredNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemErrorNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestCmdNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemEventNameMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemAcquiredNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemAcquiredNameMap:Landroid/util/SparseArray;

    const-string v1, "SEM_FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemErrorNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ERROR_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemErrorNameMap:Landroid/util/SparseArray;

    const-string v1, "SEM_FINGERPRINT_ERROR"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_REQUEST_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "SEM_REQUEST_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemEventNameMap:Landroid/util/SparseArray;

    const-string v1, "SEM_FINGERPRINT_EVENT_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semDozeChange(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semHLPMChange(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$2200()I
    .locals 1

    sget v0, Lcom/android/server/fingerprint/FingerprintService;->mMaxTemplatesNumber:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/fingerprint/FingerprintService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semIsPrivilegedSignature(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIIII)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->semSendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->semIsActiveBiometrics(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemIsSupportedSwipeEnroll:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->semStartRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/ISemFingerprintViewCallback;)Landroid/hardware/fingerprint/ISemFingerprintViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semGetFingerIconRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorActiveArea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorDraggingArea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/fingerprint/FingerprintService;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveFinger(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/fingerprint/FingerprintService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIsDesktopMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    return-object v0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIIII)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "FingerprintService"

    const-string v2, "Rejecting : invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semIsKnoxKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not a current user or profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x37

    invoke-virtual {v1, v3, p3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semIsSecureFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_6

    const/4 p2, 0x0

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v2
.end method

.method private cancelLockoutResetForUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    :goto_0
    return-void
.end method

.method private clearEnumerateState()V
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private currentClient(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private doFingerprintCleanupForUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->semStartEnumerate(I)V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v2, "service"

    const-string v3, "Fingerprint Manager"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "count"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "accept"

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    iget v12, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_1

    :cond_0
    move v12, v11

    :goto_1
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "reject"

    if-eqz v7, :cond_1

    iget v12, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_2

    :cond_1
    move v12, v11

    :goto_2
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "acquire"

    if-eqz v7, :cond_2

    iget v12, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_3

    :cond_2
    move v12, v11

    :goto_3
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "lockout"

    if-eqz v7, :cond_3

    iget v12, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_4

    :cond_3
    move v12, v11

    :goto_4
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "permanentLockout"

    if-eqz v7, :cond_4

    iget v12, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_5

    :cond_4
    move v12, v11

    :goto_5
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "acceptCrypto"

    if-eqz v8, :cond_5

    iget v12, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_6

    :cond_5
    move v12, v11

    :goto_6
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "rejectCrypto"

    if-eqz v8, :cond_6

    iget v12, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_7

    :cond_6
    move v12, v11

    :goto_7
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "acquireCrypto"

    if-eqz v8, :cond_7

    iget v12, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_8

    :cond_7
    move v12, v11

    :goto_8
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "lockoutCrypto"

    if-eqz v8, :cond_8

    iget v12, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_9

    :cond_8
    move v12, v11

    :goto_9
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "permanentLockoutCrypto"

    if-eqz v8, :cond_9

    iget v11, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    nop

    :cond_9
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v12}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_a
    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "prints"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "dump formatting failure"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dpc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " latest sensor status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " current User : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Max Template : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/fingerprint/FingerprintService;->mMaxTemplatesNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " C :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NAVI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    iget-boolean v3, v3, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " daemon version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sensor info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\n"

    const-string v5, ", "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FOD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/android/server/fingerprint/BioLoggingManager;->readLog()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v10, :cond_0

    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v11, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v8, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v8, :cond_1

    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private enumerateUser(I)V
    .locals 7

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    return-void
.end method

.method private getLockoutMode()I
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method private isForegroundActivity(II)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v3, "am.getRunningAppProcesses() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "isWorkProfile: DualApp profile!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_3
    :goto_0
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "isWorkProfile: SecureFolder/BBC profile!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static synthetic lambda$handleError$1(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->semStartEnumerate(I)V

    return-void
.end method

.method public static synthetic lambda$onBootPhase$2(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$semClientDied$3(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semClientDied : waiting for LEAVE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$semGetSensorStatus$10(Lcom/android/server/fingerprint/FingerprintService;ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    return-void
.end method

.method public static synthetic lambda$semInitSensorInfo$6(Lcom/android/server/fingerprint/FingerprintService;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$semInitSensorInfo$7(Lcom/android/server/fingerprint/FingerprintService;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$semRemoveTemplateForUser$4(Lcom/android/server/fingerprint/FingerprintService;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->semSendBroadcast(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v3, "FPRM"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic lambda$semRemoveTemplateForUser$5(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->semSendBroadcast(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v4, "FPRM"

    const-string v5, "ALL"

    const-wide/16 v6, -0x1

    const/4 v8, 0x3

    invoke-static/range {v3 .. v8}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic lambda$semStartRequest$8(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->semStartUpdateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    return-void
.end method

.method public static synthetic lambda$semStartRequest$9(Lcom/android/server/fingerprint/FingerprintService;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$serviceDied$0(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    return-void
.end method

.method private listenForUserSwitches()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$13;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private loadAuthenticatorIds()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyClientActiveCallbacks : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1, v2, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemLockoutRemainingTime:J

    return-void
.end method

.method private semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semClientDied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private semDozeChange(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "semDozeChange: No callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Landroid/hardware/fingerprint/ISemFingerprintViewCallback;->onEvent(I)V

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semDozeChange: sent event, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semDozeChange : failed to send event "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static semGenerateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "FingerprintService"

    const-string/jumbo v6, "semGenerateNameMap: failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private semGetFingerIconRect()Landroid/graphics/Rect;
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v8, v4

    div-int/lit8 v8, v8, 0x2

    float-to-int v9, v7

    sub-int/2addr v8, v9

    float-to-int v9, v6

    float-to-int v10, v5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    float-to-int v10, v4

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    float-to-int v11, v4

    sub-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v8

    iput v10, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    float-to-int v11, v4

    add-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v10, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    iput v10, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    float-to-int v11, v4

    sub-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int v11, v4

    sub-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_2
    iget v10, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v9

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    float-to-int v11, v4

    add-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int v11, v4

    sub-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_3
    iget v10, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v8

    iput v10, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    float-to-int v11, v4

    add-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v9

    iput v10, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    float-to-int v11, v4

    add-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_0
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private semGetSensorStatus(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)I
    .locals 9

    const v0, 0x186ca

    if-nez p1, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semGetSensorStatus: daemon is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sys.samsung.fp.sensor.status"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    nop

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$3pV6g9n3qjibH5VzNRVeMRobdQ4;

    invoke-direct {v8, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$3pV6g9n3qjibH5VzNRVeMRobdQ4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semGetSensorStatus FP_FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    const v3, 0x186c8

    if-eq v0, v3, :cond_2

    const v3, 0x186c9

    if-eq v0, v3, :cond_2

    const v0, 0x186ca

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semGetSensorStatus"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->semLoggingSensorStatus(I)V

    return v0
.end method

.method private semHLPMChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semHLPMChange: No callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mViewCallback:Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/ISemFingerprintViewCallback;->onEvent(I)V

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semHLPMChange: sent event, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semHLPMChange : failed to send event "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private semHandlePreError(Lcom/android/server/fingerprint/ClientMonitor;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->isOneHandModeRunning()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x1389

    invoke-virtual {p1, v2, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    iget-boolean v0, p1, Lcom/android/server/fingerprint/ClientMonitor;->mIsKeyguard:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const v2, 0x1040972

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsSmartViewDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x138b

    invoke-virtual {p1, v2, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    return v3

    :cond_2
    instance-of v0, p1, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    return v3

    :cond_3
    return v1
.end method

.method private semIncreaseSensorTouchCount()V
    .locals 3

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semSaveTouchCount(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private semInitSensorInfo(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)V
    .locals 13

    if-nez p1, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semInitSensorInfo: HAL is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x4

    const/16 v4, 0x100

    const/4 v5, 0x0

    new-instance v7, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Jkzjsq6DMXZJkRLmSdfBwstAtX8;

    invoke-direct {v7, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Jkzjsq6DMXZJkRLmSdfBwstAtX8;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semInitSensorInfo(getVersion) FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v8, "FPDA"

    new-instance v9, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    invoke-static/range {v7 .. v12}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    const/4 v8, 0x5

    const/16 v9, 0x800

    const/4 v10, 0x0

    new-instance v12, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$yefwXIpfqx5dJ6W2XKvZewNi6co;

    invoke-direct {v12, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$yefwXIpfqx5dJ6W2XKvZewNi6co;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    move-object v7, p1

    move-object v11, v6

    invoke-interface/range {v7 .. v12}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semInitSensorInfo(getSensorInfo) FP_FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    move v2, v3

    :goto_1
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "UID : "

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    add-int/lit8 v5, v4, 0x6

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v8, "FPDS"

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    move-object v9, v3

    invoke-static/range {v7 .. v12}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_6
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    if-eqz v2, :cond_7

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semInitSensorInfo: Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    if-eqz v2, :cond_8

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semInitSensorInfo: Sensor Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpSensorInfo:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semInitSensorInfo "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method static semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semInsertSurveyLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_LOGGING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/fingerprint/FingerprintUtils$Survey;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService;->mSemFingerprintDQAManager:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->preprocessBigdata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_LOGGING:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->isSupportDMALogging(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "tracking_id"

    const-string v3, "4G2-399-4810151"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method private semIsActiveBiometrics(ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v2

    move p1, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "disable_insecure_biometrics"

    invoke-static {v5, v6, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    const-string v5, "com.android.settings"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semIsActiveBiometrics : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active Biometrics : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private semIsDesktopMode()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semIsDesktopMode : failure : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private semIsEnabledNavigationMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private semIsKnoxKeyguard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private semIsPrivilegedSignature(I)Z
    .locals 12

    const-string v0, "aa3ee844efd4f6efd5def1e1f777c7421fb7beaeed3497dcd783e4b4644701b1"

    const-string v1, "com.osp.app.signin"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-gtz v5, :cond_0

    return v2

    :cond_0
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPrivilegedSignature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "com.osp.app.signin"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v4, v2

    const/16 v6, 0x40

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetSignatureHash([B)Ljava/lang/String;

    move-result-object v10

    const-string v11, "aa3ee844efd4f6efd5def1e1f777c7421fb7beaeed3497dcd783e4b4644701b1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Privileged Signature : true, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "isPrivilegedSignature : failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v2
.end method

.method private semIsSecureFolder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private semIsTZCommand(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private semLoggingSensorStatus(I)V
    .locals 9

    const/4 v0, 0x0

    const v1, 0x186ca

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsSensorError:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "pre:"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPreviousAuthStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, ";gesture:"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsGestureWork:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, ";first:"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsFirstSensorCheck:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v4, "FPST"

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsSensorError:Z

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semLoggingSensorStatus: FPST ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsSensorError:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsFirstSensorCheck:Z

    return-void
.end method

.method private semReadSensorConfig()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x4

    sput v0, Lcom/android/server/fingerprint/FingerprintService;->mMaxTemplatesNumber:I

    const-string/jumbo v2, "google_touch_rear,navi=1"

    const-string/jumbo v0, "google_touch_rear,navi=1"

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v0, 0x1

    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    const-string/jumbo v8, "settings="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    const-string/jumbo v0, "settings="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/fingerprint/FingerprintService;->mMaxTemplatesNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "FingerprintService"

    const-string/jumbo v9, "semReadSensorConfig : failed to read sensor config"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_0
    const-string/jumbo v8, "swipe_enroll"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemIsSupportedSwipeEnroll:Z

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/fingerprint/fingerprint/position"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v7, v7, [B

    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\,"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v13, 0x7

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v12, 0x8

    if-lt v11, v12, :cond_3

    aget-object v11, v10, v5

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    aget-object v11, v10, v0

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    aget-object v11, v10, v15

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    aget-object v11, v10, v14

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    aget-object v11, v10, v13

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v13, v10, v11

    iput-object v13, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorActiveArea:Ljava/lang/String;

    aget-object v11, v10, v12

    iput-object v11, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorDraggingArea:Ljava/lang/String;

    :cond_3
    sget-boolean v11, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readSensorConfig : "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v10, v15

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " x "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v10, v14

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    aget-object v0, v10, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    aget-object v0, v10, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    aget-object v0, v10, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    const-string v5, "FingerprintService"

    const-string/jumbo v7, "readSensorConfig : failed to close file"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_5
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_3
    const-string v5, "FingerprintService"

    const-string/jumbo v7, "readSensorConfig : failure to read sensor info : "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :goto_4
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readSensorConfig : POS : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    goto :goto_7

    :goto_5
    nop

    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v7, v0

    const-string v7, "FingerprintService"

    const-string/jumbo v8, "readSensorConfig : failed to close file"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_7
    :goto_6
    throw v5

    :cond_8
    const-string v0, "FingerprintService"

    const-string/jumbo v5, "semReadSensorConfig : No file for sensor pos"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    return-void
.end method

.method private semRemove(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;II)I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, p3, p2}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->remove(II)I

    move-result v3

    move v0, v3

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semRemove : remove FP_FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semRemove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private semRemoveFinger(II)I
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "semRemoveFinger: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, ""

    invoke-direct {p0, p2, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq v2, p2, :cond_1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semRemoveFinger : id mismatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "semRemoveFinger : no enrolled finger"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    const/4 v3, 0x0

    if-ne p1, v1, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-direct {p0, v0, v5, p2}, Lcom/android/server/fingerprint/FingerprintService;->semRemove(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;II)I

    move-result v5

    if-eqz v5, :cond_3

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semRemove with id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-direct {p0, p2, v6}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveTemplateForUser(II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->semUpdateAuthenticatorIds(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;I)V

    return v3

    :cond_5
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->semRemove(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;II)I

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveTemplateForUser(II)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->semUpdateAuthenticatorIds(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;I)V

    return v4

    :cond_6
    return v1
.end method

.method private semRemoveTemplateForUser(II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semRemoveTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;-><init>(Lcom/android/server/fingerprint/FingerprintService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;-><init>(Lcom/android/server/fingerprint/FingerprintService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static semSendBroadcast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_0

    const-string/jumbo v1, "fingerIndex"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "verificationType"

    const-string v2, "Device Credential"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x1000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is sent with fingerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semSendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private semSendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-interface {p1, v0, v1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semSendError : Failed to invoke onError:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semSendError : Failed to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :cond_0
    :goto_1
    return-void
.end method

.method private semSendRequestEvent(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x6

    invoke-interface {v1, v2, v3, v4, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V

    const/16 v1, 0x2719

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "handleAcquired failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method private semStartEnumerate(I)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semStartEnumerate : no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [B

    iget-object v1, v9, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v2, v9, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v10}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v5, v0

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService;->semStartRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v1

    move v7, v1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartEnumerate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    const-string v5, "%02d "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FPD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v8

    :goto_1
    if-ge v2, v7, :cond_2

    const-string v3, "%02d "

    new-array v5, v4, [Ljava/lang/Object;

    aget-byte v6, v0, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "FingerprintService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-gez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fingeprintd_no_template_error"

    invoke-static {v1, v2, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartEnumerate : error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-lez v7, :cond_9

    move v1, v8

    :goto_2
    move v13, v1

    if-ge v13, v7, :cond_8

    const/4 v1, -0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move v14, v2

    move v2, v8

    :goto_3
    if-ge v2, v14, :cond_6

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    aget-byte v4, v0, v13

    if-ne v3, v4, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    move v15, v1

    if-ltz v15, :cond_7

    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v1, v9, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v2, v9, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    aget-byte v3, v0, v13

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintUtils;->semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V

    iget-object v1, v9, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    aget-byte v3, v0, v13

    invoke-static {v1, v2, v3, v10}, Lcom/android/server/fingerprint/FingerprintService;->semSendBroadcast(Landroid/content/Context;Ljava/lang/String;II)V

    :goto_5
    add-int/lit8 v1, v13, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-direct {v9, v10, v3}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveTemplateForUser(II)V

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fingeprintd_no_template"

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-direct {v9, v10, v3}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveTemplateForUser(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_a
    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semStartEnumerate : failure "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void
.end method

.method private semStartRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v1, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "semStartRequest: no fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartRequest: CMD= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestCmdNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], Param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", UserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v13, v2

    :try_start_0
    const-string v0, ""

    invoke-direct {v7, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move v15, v0

    const/16 v0, 0x2711

    const/4 v6, 0x0

    if-ne v8, v0, :cond_2

    :try_start_1
    iget-object v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    new-instance v5, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v9, v5

    move v5, v11

    move v10, v6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :goto_0
    move-object/from16 v9, p3

    move-object/from16 v10, p4

    goto/16 :goto_13

    :goto_1
    move-object/from16 v9, p3

    move-object/from16 v10, p4

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_2
    move v10, v6

    const/16 v0, 0x3e8

    if-ne v8, v0, :cond_3

    :try_start_3
    invoke-direct {v7, v11, v15}, Lcom/android/server/fingerprint/FingerprintService;->semRemoveFinger(II)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x1

    if-ne v8, v0, :cond_5

    :try_start_4
    invoke-virtual {v7, v2}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    :cond_4
    move v0, v10

    move-object/from16 v10, p4

    goto/16 :goto_6

    :cond_5
    const/16 v0, 0x3e9

    if-ne v8, v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-ne v0, v9, :cond_6

    iget-wide v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mSemLockoutRemainingTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartRequest["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] FP_FINISH - RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_6
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_7
    if-ne v8, v1, :cond_8

    :try_start_5
    const-string v0, ""

    invoke-direct {v7, v15, v0}, Lcom/android/server/fingerprint/FingerprintService;->semIsActiveBiometrics(ILjava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_4

    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_8
    const/4 v0, 0x6

    if-ne v8, v0, :cond_9

    :try_start_6
    invoke-direct {v7, v12}, Lcom/android/server/fingerprint/FingerprintService;->semGetSensorStatus(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_9
    const/4 v0, 0x4

    if-ne v8, v0, :cond_d

    :try_start_7
    iget-object v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_c

    move v0, v10

    move-object/from16 v10, p4

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    nop

    :goto_2
    :try_start_8
    iget-object v1, v7, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, v7, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    aget-byte v1, v1, v0

    aput-byte v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    iget-object v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mFpDaemonVersion:[B

    array-length v0, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_c
    move-object/from16 v10, p4

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1
    move-exception v0

    move-object/from16 v10, p4

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v10, p4

    goto/16 :goto_10

    :cond_d
    move v0, v10

    move-object/from16 v10, p4

    const/16 v4, 0x3eb

    if-ne v8, v4, :cond_13

    if-nez v11, :cond_e

    :try_start_9
    const-string v1, ""

    invoke-direct {v7, v15, v1}, Lcom/android/server/fingerprint/FingerprintService;->semIsActiveBiometrics(ILjava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-nez v1, :cond_e

    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_e
    if-eqz v10, :cond_12

    :try_start_a
    array-length v1, v10

    sget v2, Lcom/android/server/fingerprint/FingerprintService;->mMaxTemplatesNumber:I

    if-gt v1, v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v7, v15}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_4
    if-ge v0, v2, :cond_10

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v10, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_11
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_12
    :goto_5
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_13
    if-nez v8, :cond_15

    :try_start_b
    iget-object v4, v7, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v5, v4, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v5, :cond_14

    move-object v5, v4

    check-cast v5, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v5}, Lcom/android/server/fingerprint/EnrollClient;->semPauseEnroll()V

    :cond_14
    goto :goto_6

    :cond_15
    if-ne v8, v9, :cond_17

    iget-object v4, v7, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v5, v4, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v5, :cond_16

    move-object v5, v4

    check-cast v5, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v5}, Lcom/android/server/fingerprint/EnrollClient;->semResumeEnroll()V

    :cond_16
    goto :goto_6

    :cond_17
    const/16 v4, 0x3f3

    if-ne v8, v4, :cond_19

    iget-object v1, v7, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2, v11}, Lcom/android/server/fingerprint/AuthenticationClient;->semMoveSensorIcon(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_18
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_19
    const/16 v4, 0x3f1

    if-eq v8, v4, :cond_26

    const/16 v4, 0x3f4

    if-ne v8, v4, :cond_1a

    goto/16 :goto_11

    :cond_1a
    :goto_6
    :try_start_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v6, v4

    move-object/from16 v5, p3

    if-eqz v5, :cond_1b

    :try_start_d
    array-length v4, v5

    if-lez v4, :cond_1b

    array-length v4, v5

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_1b

    aget-byte v16, v5, v2

    move/from16 v19, v16

    move/from16 v3, v19

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v5

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v9, v5

    goto/16 :goto_12

    :cond_1b
    iget-object v4, v7, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-direct {v7, v8}, Lcom/android/server/fingerprint/FingerprintService;->semIsTZCommand(I)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v0, :cond_1d

    if-ne v8, v1, :cond_1c

    const/16 v0, 0x1388

    const/4 v1, 0x0

    :try_start_f
    invoke-direct {v7, v1, v9, v0}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    move-object v9, v5

    move-object/from16 v20, v6

    goto/16 :goto_e

    :cond_1c
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {v7, v1, v9, v0}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    :goto_8
    const/4 v0, 0x0

    invoke-direct {v7, v15, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_1d
    const/4 v0, 0x3

    if-ne v8, v0, :cond_1e

    move-object/from16 v3, p7

    iput-object v3, v7, Lcom/android/server/fingerprint/FingerprintService;->mSemRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    :cond_1e
    move-object/from16 v3, p7

    :goto_9
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide/from16 v16, v0

    if-nez v10, :cond_1f

    const/4 v0, 0x0

    goto :goto_a

    :cond_1f
    array-length v0, v10

    :goto_a
    new-instance v2, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$tmcJ37AarSYN5HfwRiKsFFiuOaQ;

    invoke-direct {v2, v7}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$tmcJ37AarSYN5HfwRiKsFFiuOaQ;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v1, v12

    move-object/from16 v18, v2

    move v2, v8

    move v3, v0

    move-object/from16 v19, v4

    move v4, v11

    move-object v9, v5

    move-object v5, v6

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    :try_start_11
    invoke-interface/range {v1 .. v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semStartRequest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] FP_FINISH ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-lez v0, :cond_20

    if-eqz v10, :cond_20

    array-length v0, v10

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_b
    iget v1, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestOutBuf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    const/16 v0, 0xa

    if-ne v8, v0, :cond_21

    const-string v0, ""

    invoke-direct {v7, v15, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_21
    monitor-exit v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_25

    const/16 v0, 0x13

    if-eq v8, v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_23

    array-length v2, v9

    if-lez v2, :cond_23

    array-length v2, v9

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_22

    aget-byte v4, v9, v3

    const-string v5, "%02x "

    move/from16 v21, v2

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v2, v16

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    goto :goto_c

    :cond_22
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semStartRequest: In = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-eqz v10, :cond_25

    array-length v2, v10

    if-lez v2, :cond_25

    const/4 v2, 0x0

    :goto_d
    iget v3, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I

    if-ge v2, v3, :cond_24

    const-string v3, "%02x "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aget-byte v6, v10, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v5, v16

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semStartRequest: Out= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mRequestResult:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_4
    move-exception v0

    move-object/from16 v19, v4

    move-object v9, v5

    move-object/from16 v20, v6

    :goto_e
    :try_start_13
    monitor-exit v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0

    :catchall_5
    move-exception v0

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_f
    move-object/from16 v9, p3

    goto :goto_13

    :catch_4
    move-exception v0

    :goto_10
    move-object/from16 v9, p3

    goto :goto_12

    :cond_26
    :goto_11
    move-object/from16 v9, p3

    iget-object v0, v7, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_27

    move-object v1, v0

    check-cast v1, Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1, v8}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleRequestCommand(I)I

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_27
    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :catchall_7
    move-exception v0

    move v15, v1

    goto :goto_13

    :catch_5
    move-exception v0

    move v15, v1

    :goto_12
    :try_start_15
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semStartRequest : failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, -0x3

    return v0

    :catchall_8
    move-exception v0

    :goto_13
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private semStartUpdateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v14, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semStartUpdateTrustApp: failed to read path"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartUpdateTrustApp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$14;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v13, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v8, v13, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget v9, v13, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v15

    move-object v2, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/fingerprint/FingerprintService$14;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/fingerprint/UpdateClient;->start()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    const/16 v4, -0x64

    invoke-virtual {v1, v3, v4}, Lcom/android/server/fingerprint/UpdateClient;->onAcquired(II)Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/fingerprint/UpdateClient;->stop(Z)I

    invoke-virtual {v1}, Lcom/android/server/fingerprint/UpdateClient;->destroy()V

    :cond_1
    return-void
.end method

.method private semStopClient(ZZI)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semStopClient : CurrentClient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    instance-of v4, v0, Lcom/android/server/fingerprint/RemovalClient;

    if-eqz v4, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semStopClient : Current Client is removal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v4, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v4, :cond_1

    const/16 v4, 0x1388

    if-ne p3, v4, :cond_1

    iget-boolean v4, v0, Lcom/android/server/fingerprint/ClientMonitor;->mIsKeyguard:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    if-eqz v3, :cond_2

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p3}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semStopClient: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->cancel()I

    move-result v6

    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "semStopClient : cancel FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "FingerprintService"

    const-string/jumbo v6, "semStopClient :  failed "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez p1, :cond_6

    if-eqz v3, :cond_6

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semStopClient : current pending client : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    :cond_6
    return-void
.end method

.method private semUpdateAuthenticatorIds(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;I)V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semUpdateAuthenticatorIds : getAuthenticatorId FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Failed to getAuthenticatorId():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 25

    move-object/from16 v15, p0

    move/from16 v0, p5

    move-object/from16 v14, p9

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAuthentication("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v15, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    iget v1, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startAuthentication : id mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_0
    move/from16 v16, v0

    new-instance v17, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v7, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget-object v13, v15, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move/from16 v8, v16

    move-wide/from16 v9, p2

    move/from16 v11, p8

    move-object v12, v14

    move-object/from16 v18, v13

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p8, :cond_1

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    move-object/from16 v6, p9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v6, p9

    :cond_2
    move v5, v1

    :goto_0
    move-object/from16 v7, p10

    invoke-virtual {v0, v7, v5}, Lcom/android/server/fingerprint/AuthenticationClient;->semSetAttribute(Landroid/os/Bundle;Z)V

    sget-boolean v8, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    iget-object v11, v4, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/fingerprint/AuthenticationClient;->semSetSensorPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {v4, v0}, Lcom/android/server/fingerprint/FingerprintService;->semHandlePreError(Lcom/android/server/fingerprint/ClientMonitor;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startAuthentication: handle error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v8, v4, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v8, :cond_9

    const-string v9, "FingerprintService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startAuthentication: current Client = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    instance-of v10, v8, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v10, :cond_6

    const-string v10, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enroll client["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] is in progress"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :cond_5
    move-object/from16 v11, p1

    goto :goto_1

    :cond_6
    instance-of v10, v8, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v10

    move-object/from16 v11, p1

    if-ne v10, v11, :cond_7

    const-string v10, "FingerprintService"

    const-string v12, "authentication with same token is already in progress."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-eqz v9, :cond_a

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "FingerprintService"

    const-string v2, "Cannot send canceled message to client"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->destroy()V

    return-void

    :cond_9
    move-object/from16 v11, p1

    :cond_a
    if-eqz v5, :cond_b

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "FingerprintService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In lockout mode("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") ; disallowing authentication"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, v2, :cond_c

    const/4 v2, 0x7

    goto :goto_2

    :cond_c
    const/16 v2, 0x9

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "FingerprintService"

    const-string v10, "Cannot send permanent lockout message to client"

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->destroy()V

    return-void

    :cond_e
    invoke-direct {v4, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 7

    if-nez p1, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startClient : client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request stop current client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v4, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_4

    instance-of v4, p1, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v2, :cond_3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startClient : current pending client : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    invoke-virtual {v2}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    :cond_3
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v1, Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandlePendingStatus()V

    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startClient : Pending client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v4, -0x1

    invoke-direct {p0, v3, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), initiatedByClient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "starting client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), initiatedByClient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    move-result v5

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/fingerprint/FingerprintService;->semSendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 23

    move-object/from16 v13, p0

    move/from16 v0, p3

    move-object/from16 v14, p7

    invoke-direct {v13, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    iget v1, v13, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startEnrollment : id mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v13, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_0
    move v15, v0

    move v8, v15

    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v13, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-object v12, v13, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move v7, v15

    move-object/from16 v9, p2

    move/from16 v10, p6

    move-object v11, v14

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    move-object/from16 v9, v16

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/android/server/fingerprint/EnrollClient;->semSetAttribute(Landroid/os/Bundle;Z)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaWidth:Ljava/lang/String;

    iget-object v1, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorAreaHeight:Ljava/lang/String;

    iget-object v2, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginLeft:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorMarginBottom:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemSensorImageSize:Ljava/lang/String;

    move-object/from16 v17, v9

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/fingerprint/EnrollClient;->semSetSensorPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {v13, v9}, Lcom/android/server/fingerprint/FingerprintService;->semHandlePreError(Lcom/android/server/fingerprint/ClientMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnrollment: handle error"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, v13, Lcom/android/server/fingerprint/FingerprintService;->mSemIsSupportedSwipeEnroll:Z

    const/4 v7, 0x0

    move-object v0, v13

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semStartRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    const/4 v0, 0x1

    invoke-direct {v13, v9, v0}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveGroup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/vendor/biometrics/fp/User_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateActiveGroup[setActiveGroup] FP_FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v5

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateActiveGroup[getAuthenticatorId] FP_FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "fod_enable,1,1"

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private userActivity()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method checkPermission(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method getEffectiveUserId(I)I
    .locals 7

    move v0, p1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget p1, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEffectiveUserId: SemPersonaManager ParentId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget p1, v4, Landroid/content/pm/UserInfo;->id:I

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEffectiveUserId : DualAppId ParentId =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_5
    const-string v2, "FingerprintService"

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_6

    if-eq v0, p1, :cond_6

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEffectiveUserId : change userId,  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return p1
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "getEnrolledFingerprints : waiting HAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, ""

    invoke-direct {p0, v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v2, :cond_1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnrolledFingerprints : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    if-nez v4, :cond_3

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "FingerprintService"

    const-string v6, "Failed to get biometric interface"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_0
    nop

    :goto_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "FingerprintService"

    const-string/jumbo v6, "fingerprint HIDL not available"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_0
    :try_start_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    invoke-interface {v4}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v4, p0, v6, v7}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v4, v8}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_6
    const-string v8, "FingerprintService"

    const-string v9, "Failed to open fingerprint HAL"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    :goto_2
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fingerprint HAL id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-wide v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    invoke-direct {p0, v2, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->semInitSensorInfo(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)V

    goto :goto_3

    :cond_2
    const-string v4, "FingerprintService"

    const-string v6, "Failed to open Fingerprint HAL!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "fingerprintd_openhal_error"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    :cond_3
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    return-object v3

    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected handleAcquired(JII)V
    .locals 4

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->mSemAcquiredNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService;->mSemEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAcquired : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", acquiredInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/fingerprint/FingerprintService;->mSemAcquiredNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], vendor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : acquiredInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    sparse-switch p4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsGestureWork:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    invoke-virtual {v0, p4}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->handleGestureEvent(I)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIncreaseSensorTouchCount()V

    return-void

    :sswitch_1
    invoke-direct {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->semSendRequestEvent(I)V

    return-void

    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIncreaseSensorTouchCount()V

    nop

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v2

    if-nez v2, :cond_4

    instance-of v2, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v3, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2712 -> :sswitch_2
        0x2718 -> :sswitch_1
        0x2719 -> :sswitch_1
        0x4e21 -> :sswitch_0
        0x4e22 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleAuthenticated : deviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ,fingerId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,groupId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p1

    const-string v3, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleAuthenticated : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mPreviousAuthStatus:I

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [B

    move v9, v4

    :goto_3
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    move-object/from16 v10, p5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p5

    sget-boolean v9, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    array-length v11, v6

    move v12, v4

    :goto_4
    if-ge v12, v11, :cond_4

    aget-byte v13, v6, v12

    const-string v14, "%02x "

    new-array v15, v5, [Ljava/lang/Object;

    and-int/lit16 v5, v13, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v4

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleAuthenticated: token("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_5

    :cond_6
    move-object/from16 v10, p5

    :goto_5
    if-eqz v3, :cond_7

    invoke-virtual {v3, v1, v2}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    :cond_7
    if-eqz v1, :cond_8

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_6

    :cond_8
    const/4 v6, 0x1

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    :goto_6
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnrollResult : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/server/fingerprint/EnumerateClient;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    if-nez p5, :cond_4

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getUnknownFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fingerprints for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 11

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleError : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService;->mSemErrorNameMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/fingerprint/FingerprintService;->mSemErrorNameMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleError : error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v4, v3, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getGroupId()I

    move-result v4

    move v0, v4

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_3
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleError(client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x5

    if-ne p3, v2, :cond_6

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "handleError : FINGERPRINT_ERROR_CANCELED : nothing to do"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    if-ne p3, v2, :cond_7

    const-string v2, "FingerprintService"

    const-string v3, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    const/16 v2, 0x8

    if-ne p3, v2, :cond_9

    const/16 v2, 0x3ec

    if-ne p4, v2, :cond_8

    move v2, v0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qbtf1bzLcZ86r6-fIvfV6pCiKJQ;

    invoke-direct {v4, p0, v2}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qbtf1bzLcZ86r6-fIvfV6pCiKJQ;-><init>(Lcom/android/server/fingerprint/FingerprintService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v6, "FPER"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v3, "FPER"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_a
    return-void

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method protected handleRemoved(JIII)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_1
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    :cond_3
    :goto_0
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitching : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->observe(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "FingerprintService"

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "hasEnrolledFingerprints : waiting HAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, ""

    invoke-direct {p0, v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v2, :cond_2

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasEnrolledFingerprints : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, p1, :cond_1

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 3

    :try_start_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->readValue()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mGestureManager:Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->observe(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dojgrSNlrWEFz8KT9qnPpNprExw;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dojgrSNlrWEFz8KT9qnPpNprExw;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetTouchCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemTouchCount:I

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "onBootPhase : failed operation "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$oF58LtKhS1CzDgKIpZjg9RFPzsc;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$oF58LtKhS1CzDgKIpZjg9RFPzsc;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    return-void
.end method

.method protected resetFailedAttemptsForUser(ZI)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemLockoutRemainingTime:J

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method public serviceDied(J)V
    .locals 4

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "fingerprint HAL died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fingerprintd_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->semIsEnabledNavigationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$5z8r9j27anJdya7dk_h8hlF_M6I;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$5z8r9j27anJdya7dk_h8hlF_M6I;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 19

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnumerate: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v14, 0x1

    if-eqz p5, :cond_1

    move/from16 v11, p2

    invoke-virtual {v12, v11}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$8;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v11

    move v8, v11

    move/from16 v9, p4

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    if-nez v3, :cond_1

    monitor-exit v2

    return v1

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v3

    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPostEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    sget-boolean v7, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    invoke-virtual {v7, v4}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->remove(I)V

    :cond_2
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    :try_start_0
    move-object v3, v0

    check-cast v3, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->semGetSensorStatus(Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)I

    move-result v3

    const v4, 0x186ca

    if-ne v3, v4, :cond_1

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: sensor error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/fingerprint/FingerprintService;->semStopClient(ZZI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v7

    const-string v9, "FingerprintService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startPreEnroll FP_FINISH ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms) RESULT: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mSemBroadcastManager:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    invoke-virtual {v3, v6}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->add(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-wide v7

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 19

    move-object/from16 v12, p0

    move/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startRemove: token is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p5, :cond_1

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startRemove: receiver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startRemove: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, ""

    invoke-direct {v12, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    iget v1, v12, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq v1, v0, :cond_3

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startRemove : id mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v12, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_3
    move v14, v0

    const/4 v11, 0x1

    if-eqz p7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$6;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move v8, v14

    move/from16 v9, p4

    move-object/from16 v17, v10

    move/from16 v10, p6

    move-object/from16 v18, v13

    move v13, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v18, v13

    move v13, v11

    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move v8, v14

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    :goto_0
    return-void
.end method

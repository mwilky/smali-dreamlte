.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverShapeThread;,
        Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
    }
.end annotation


# static fields
.field private static final COVER_ABSENT:I = -0x1

.field private static final COVER_ATTACH:I = 0x1

.field private static final COVER_CLOSED:I = 0x0

.field private static final COVER_DETACH:I = 0x0

.field private static final COVER_OPEN:I = 0x1

.field private static final MSG_UPDATE_WINDOW_SIZE:I = 0x12c

.field private static final SERIAL_NUMBER_CUT_LENGTH:I = 0x4

.field private static final SERVICE_VERSION:I = 0x10b0000

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

.field private final mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field private final mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverStateLock:Ljava/lang/Object;

.field private final mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

.field private final mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsNeedWakeUpWithDealy:Z

.field private mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

.field private mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v0, Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    invoke-direct {v0}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsNeedWakeUpWithDealy:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverHideAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverWindowSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    return-object v0
.end method

.method private checkNeedThread([BII)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    mul-int v2, p2, p3

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .locals 2

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    return-object v0
.end method

.method private getCoverAttachStateFromInputManager()I
    .locals 5

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/16 v2, -0x100

    const/16 v3, 0x1a

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "getCoverAttachStateFromInputManager : InputManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverStateInternal : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method private getCoverSwitchStateFromInputManager()I
    .locals 5

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/16 v2, -0x100

    const/16 v3, 0x15

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "getCoverSwitchStateFromInputManager : InputManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getInputManagerService()Lcom/android/server/input/InputManagerService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_0

    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method private getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private initialize()V
    .locals 5

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverAttachStateFromInputManager()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    nop

    :cond_3
    move v0, v2

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    :goto_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportWindowCover()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private initializeCoverController(ZII)V
    .locals 3

    if-eqz p2, :cond_5

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZI)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/sepunion/cover/LedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZII)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    :cond_6
    :goto_0
    return-void
.end method

.method private initializeLedCoverController()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->getSupportNfcLedCoverLevel()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeLedCoverController : unsupported NfcLedCover level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    nop

    :goto_0
    return-void
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x34

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private notifyCoverAttachStateChangedInternal(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method private notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v0, v2, :cond_3

    :cond_1
    nop

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p2, v0

    :cond_3
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->isThemeCover(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    :cond_5
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

.method private printCoverDebugModeGuide(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Cover Test Mode options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [cmd] [type]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    on: cover attached"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    off: cover detached"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  type may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    f[lip cover]: flip cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    s[view cover]: sview cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    c[lear cover]: clear cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    l[ed cover]: led cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    n[eon cover]: neon cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    g[amepack cover]: gamepack cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    led [b]ack cover]: led back cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "get_x_num"

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "get_y_num"

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method private registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListenerCallbackInternal : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sepunion/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x9

    if-eq v4, v6, :cond_3

    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sepunion/cover/Feature;->isSupportSecureCover()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v0, v4, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v6

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeCoverController(ZII)V

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v6, v4, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v7, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    invoke-virtual {v6, v2, v4, v7}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v6}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverInformationToAgentLocked(Z)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v2, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v7, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    invoke-virtual {v6, v1, v4, v7}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverService(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_9

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v1, :cond_a

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isRuggedizedFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->showRuggedizedPopup(Landroid/content/Context;ZZ)V

    :cond_b
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", switchState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendCoverInformationToAgentLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne p1, v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendCoverSwitchStateLocked : return false because switch state is same"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverSwitchStateLocked : return false because type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    const/16 v0, 0xb

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    if-ne v1, v0, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v3}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->cancelHideAnimation()V

    :cond_4
    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->isLcdOffByDisabledByApp()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    if-eqz p4, :cond_7

    if-ne p1, v3, :cond_7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v2, v4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v4, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    :goto_0
    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    const/4 v0, 0x7

    if-ne v1, v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v2, v4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    nop

    :goto_2
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", color = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", widthPixel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", heightPixel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private sendTouchRegion([BII)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendTouchRegion"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendTouchRegion : coverShape is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->checkNeedThread([BII)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverShapeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverShapeThread;-><init>([BIILcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;)V

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverShapeThread;->start()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendTouchRegion : we don\'t need to start thread because there is no valid value."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendTouchRegion : width is 0 or height is 0."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterCallbackInternal(Landroid/os/IBinder;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverAttachState : attach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverAttachState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverAttachState : Returning attach state - it is same"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverStateToWindowManagerLocked : wms is null"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportSecureCover()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverSwitchState : return because this cover is secure cover"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->needsCPUBoostCover(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportDetectCover()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverVerification()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverSwitchState : return because cover is not attached"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    monitor-exit v0

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverSwitchState : delay wakeup"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsNeedWakeUpWithDealy:Z

    goto :goto_1

    :cond_7
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsNeedWakeUpWithDealy:Z

    :goto_1
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v1

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    sget-boolean v2, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverSwitchState : cover is opened, so wake up"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsNeedWakeUpWithDealy:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->semWakeUp(JI)V

    :cond_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCoverWindowSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->initializeDefaultCoverState()V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :pswitch_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "disableCoverManager : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;

    invoke-direct {v4, p0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V

    invoke-virtual {v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "disableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_2
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    array-length v0, p3

    if-lez v0, :cond_6

    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    array-length v4, p3

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    aget-object v4, p3, v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v6, "l"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v6, "g"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v6, "f"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v0

    goto :goto_0

    :sswitch_5
    const-string v6, "c"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v6, "b"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x6

    :cond_2
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: LED BACK COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0xd

    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: GAMEPACK_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0xb

    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: NEON_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: LED_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: CLEAR_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v5}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: SVIEW_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v3, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: FLIP_COVER "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST MODE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->printCoverDebugModeGuide(Ljava/io/PrintWriter;)V

    return-void

    :cond_6
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

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

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCoverStateForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCoverSwitchState()Z
    .locals 4

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverSwitchState : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->getRealCoverSwitchState()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/high16 v0, 0x10b0000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverAttachStateChangedInternal(Z)V

    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallingUid() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", myUid() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move p3, v1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : return because CoverManager is disabled"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Block cover event because factory app is running."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    invoke-direct {p0, p3, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySmartCoverAttachStateChanged : not supported cover type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppCovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isBindingCoverService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0
.end method

.method public onLcdOffByCoverEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_1
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindActiveCoverService(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->switchCoverService(II)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method onUserStopped(I)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 4

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readTouchChannelCountForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_2
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestCoverAuthentication : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCoverAuthentication : whenNanos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public sendDataToCover(I[B)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    :cond_2
    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v2, 0x1

    if-ne p1, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_2

    :cond_7
    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_9
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/LedCoverController;->sendPowerKeyToCover()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->sendPowerKeyToCover()V

    :cond_4
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSystemEvent : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendTouchRegion([BII)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTouchRegionForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/sepunion/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFotaInProgress : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFotaInProgress : inProgress = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public systemRunning()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initialize()V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v3, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v3, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v1

    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

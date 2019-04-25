.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/ModeChangerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$LocalService;,
        Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;,
        Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$Receiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
    }
.end annotation


# static fields
.field private static final CONFIGURATION_DISABLED:I = 0x0

.field private static final CONFIGURATION_ENABLED:I = 0x1

.field private static final CONFIGURATION_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field static final TAG_PREFIX:Ljava/lang/String; = "[DMS]"

.field static final TAG_PREFIX_POLICY:Ljava/lang/String; = "[DMS_POLICY]"


# instance fields
.field private mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

.field private mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

.field private final mContext:Landroid/content/Context;

.field private mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field private mCurrentUserId:I

.field private mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

.field private mDockManager:Lcom/android/server/desktopmode/DockManager;

.field private final mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

.field private mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field private mIsBootComplete:Z

.field private mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

.field private final mLock:Ljava/lang/Object;

.field private mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

.field private mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field private mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field private mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field private mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field private final mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mThread:Lcom/android/server/ServiceThread;

.field private mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field private mUiManager:Lcom/android/server/desktopmode/UiManager;

.field private mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field private mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$2;

    const-string/jumbo v1, "hdmi_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHdmiSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "desktopmode"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    new-instance v0, Lcom/android/server/desktopmode/StateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/StateManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/DualModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    iget-object v13, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/desktopmode/StandaloneModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    :goto_1
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->register()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/DesktopModeService;->handleAutoEnter(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->showOrRemoveOverheatedNotification(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStopUser(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->logDesktopModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->removeNotification(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/ServiceThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isWiredChargingOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/BlockerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDexStationWhileCoverAttached(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)Lcom/android/server/desktopmode/ModeChanger;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isForcedInternalScreenModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUiMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isLockTaskModeEnabledAndSecured()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getTouchpadSupportedFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object v0
.end method

.method private disableNotificationAlertToType(ZI)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableNotificationAlertToType(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", barType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p1, :cond_1

    const/high16 v1, 0x40000

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/app/StatusBarManager;->disableToType(II)V

    return-void
.end method

.method private varargs dismissDialog([I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    const-string/jumbo v0, "mCurrentUserId"

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Configuration"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "DISPLAY_SIZE_FORCED"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "DISPLAY_DENSITY_FORCED"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "SCREEN_OFF_TIMEOUT"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "SHOW_IME_WITH_HARD_KEYBOARD"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method private finishWelcomeActivity()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "finishWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x137

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    return-void
.end method

.method private getCurrentUiMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getCurrentUiMode()I

    move-result v0

    return v0
.end method

.method private getHdmiSettings()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/SettingsHelper;->getHdmiSettings()I

    move-result v0

    return v0
.end method

.method private getTouchpadSupportedFeatures()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    instance-of v2, v2, Lcom/android/server/desktopmode/DualModeChanger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/TouchpadManager;->isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTouchpadSupportedFeatures(), supportedFeatures="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private handleAutoEnter(Lcom/android/server/desktopmode/State;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    const-string/jumbo v1, "hdmi_auto_enter"

    const-string/jumbo v2, "hdmi_initial_connection_dialog_shown"

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->handleAutoEnter(ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v0

    const-string/jumbo v1, "pogo_auto_enter"

    const-string/jumbo v2, "pogo_initial_connection_dialog_shown"

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->handleAutoEnter(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private handleAutoEnter(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_3

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, p3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p4, p3}, Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    new-array v1, v1, [I

    aput p4, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private initializeStates()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager;->initialize()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager;->initialize()V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->handleAutoEnter(Lcom/android/server/desktopmode/State;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v2, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result v2

    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v4, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget v4, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v4, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConfigurationChangedFromDeX()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    return v0
.end method

.method private isDesktopModeAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeAvailableEx(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeEnablingOrEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeEnablingOrEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private static isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z
    .locals 3

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isDesktopModeForPreparing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeForPreparing(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private static isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method private isDesktopModeLoadingScreenShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeLoadingScreenShowing(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private static isDesktopModeLoadingScreenShowing(Lcom/android/server/desktopmode/State;I)Z
    .locals 3

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    return v0
.end method

.method private static isDexStationWhileCoverAttached(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

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

.method private isForcedInternalScreenModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isLockTaskModeEnabledAndSecured()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/ModeChanger;->isLockTaskModeEnabledAndSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isModeChangePending()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private isModeChangePending(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    return v0
.end method

.method private static isModeChangePending(Lcom/android/server/desktopmode/State;I)Z
    .locals 3

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSystemReady()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v0, v3

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isUserSetupComplete()=false"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private static isWiredChargingOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->skipWiredChargingCondition(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isWiredCharging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

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

.method public static synthetic lambda$scheduleUpdateDesktopMode$0(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return-void
.end method

.method private logDesktopModeChanged(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.android.server.desktopmode.extra.DESKTOP_MODE_SOURCE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_DESKTOP_SOURCE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    if-le v2, v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logDesktopModeChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const-string v4, "LMTD"

    goto :goto_1

    :cond_3
    const-string v4, "LDTM"

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private onBootPhase(I)V
    .locals 9

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/BlockerManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/BlockerManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    new-instance v0, Lcom/android/server/desktopmode/UiManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v0, Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/SettingsHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHdmiSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/TouchpadManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/CoverStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    new-instance v0, Lcom/android/server/desktopmode/DockManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    new-instance v0, Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/PackageStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->setSystemServices([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setSystemServices([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/desktopmode/IStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    :cond_0
    return-void
.end method

.method private onCleanupUser(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDesktopDisplayConfigured(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method private onStartUser(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onStopUser(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_1
    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_2
    return-void
.end method

.method private onUserChanged(I)V
    .locals 6

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCurrentUserId(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZII)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x66

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->onUserChanged(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method private removeNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    return-void
.end method

.method private showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private showInitialConnectionDialog(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$4;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private showNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    return-void
.end method

.method private showOrRemoveOverheatedNotification(Lcom/android/server/desktopmode/State;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0xd4

    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isOverheated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->removeNotification(I)V

    :goto_0
    return-void
.end method

.method private static skipWiredChargingCondition(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isAdapter()Z

    move-result v0

    return v0
.end method

.method private startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .locals 3

    const/16 v0, 0x66

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method private startHome(Lcom/android/server/desktopmode/State;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v2, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private startWelcomeActivity()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "skip_welcome_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x137

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :goto_0
    return-void
.end method

.method private updateDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->updateDesktopMode(Lcom/android/server/desktopmode/State;Z)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method


# virtual methods
.method public cancelOngoingNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->cancelOngoingNotification()V

    return-void
.end method

.method public commandDesktopModeService(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p2, :pswitch_data_0

    :try_start_0
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xd5

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xd1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->showNotification(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher;->commandDesktopLauncherVisibility(II)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string v2, "commandDesktopModeService(). mLauncherInterface is null!!"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    const-string v2, "commandDesktopModeService(). There is no matched target!!"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_8

    array-length v0, p3

    if-eqz v0, :cond_8

    const-string v0, "-a"

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_9

    aget-object v0, p3, v1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "toggle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "dblist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->dumpLaunchPolicyDatabase(Landroid/content/Context;Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "resolution"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; USAGE: [on|off|toggle|dblist]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    :goto_0
    const-string v1, "Please enter below instead:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cmd desktopmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    const-string v1, "Please enter below next time:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cmd desktopmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    :goto_2
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "DesktopModeService (dumpsys desktopmode):"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/desktopmode/Log;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/PackageStateManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/desktopmode/SettingsHelper;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/UiManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/BlockerManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/HardwareManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/CoverStateManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-static {v0}, Lcom/android/server/desktopmode/ToastManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/DockManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    :cond_9
    :goto_3
    return-void
.end method

.method getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return v0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyRunnable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v0

    return v0
.end method

.method public isDesktopDockConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    return v0
.end method

.method public isDesktopMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDeviceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 10

    move-object v8, p0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_1

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/desktopmode/Shell;

    iget-object v1, v8, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v8, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v3, v8, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v4, v8, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/Shell;-><init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/desktopmode/Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :cond_2
    return-void
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/BlockerManager;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call registerBlocker()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDesktopLauncher() is blocked!!"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    monitor-exit v1

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/SettingsHelper;->setCurrentUserId(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/UiManager;->setCurrentUserId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setCurrentUserId(I)V

    return-void
.end method

.method public setHdmiSettings(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/SettingsHelper;->setHdmiSettings(Z)V

    return-void
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call unregisterBlocker()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result v0

    return v0
.end method

.method public unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z

    move-result v0

    return v0
.end method

.method public updateOngoingNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->updateOngoingNotification()V

    return-void
.end method

.class Lcom/android/server/desktopmode/StandaloneModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "StandaloneModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;,
        Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;
    }
.end annotation


# static fields
.field private static final DELAY_SET_DESKTOP_MODE:I = 0x1f4

.field private static final DELAY_START_LOADING_SCREEN:I = 0x0

.field private static final DELAY_STOP_LOADING_SCREEN:I = 0x0

.field private static final MAXIMUM_SET_DESKTOP_MODE_RETRY_COUNT:I = 0x4

.field private static final MSG_SET_DESKTOP_MODE_INTERNAL:I = 0x1

.field private static final MSG_START_LOADING_SCREEN:I = 0x2

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x3

.field private static final REASON_LOADING_SCREEN_IN_TIME:I = 0x0

.field private static final REASON_LOADING_SCREEN_TIMEOUT:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_CPU_BOOST:I = 0x3a98

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field private mCurrentUiMode:I

.field private mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field private mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field private mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

.field private mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

.field private mStandaloneModeEnabled:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTopStackId:I

.field private mUiModeManager:Landroid/app/IUiModeManager;

.field private mWallpaperShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;Lcom/android/server/desktopmode/StandaloneModeChanger$1;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/StandaloneModeChanger;)Lcom/samsung/android/multidisplay/MultiDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStartLoadingScreen(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/StandaloneModeChanger;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method private handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_e

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleOnConfigurationChanged(), newConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mCustomResolution.density="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCustomDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_d

    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v4, v3, :cond_d

    :cond_3
    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleOnConfigurationChanged(), enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v5, :cond_6

    move v8, v7

    goto :goto_1

    :cond_6
    move v8, v6

    :goto_1
    const/16 v9, 0x28

    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    iput-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    iget-object v8, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8, v4}, Landroid/app/ActivityManagerInternal;->clearHomeStack(I)V

    iget-object v8, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v9

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v8, v5, v9, v10}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZII)V

    iget-object v8, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v8, v5}, Lcom/android/server/desktopmode/HardwareManager;->setTspPressureDisabled(Z)V

    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->usingNativeInCallUi()Z

    move-result v3

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v8, "Ongoing phone call!"

    invoke-static {v3, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-eqz v8, :cond_a

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v9, "Ongoing phone call!"

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_a
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->clearLaunchPolicyDatabaseCache()V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->clearSettingsBadgeCount()V

    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3, v5}, Lcom/android/server/desktopmode/IStateManager;->notifyOnConfigurationChanged(Z)V

    if-eqz v5, :cond_c

    move v6, v7

    nop

    :cond_c
    const/16 v3, 0x32

    invoke-virtual {p0, v6, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    :cond_d
    return-void

    :cond_e
    :goto_3
    return-void
.end method

.method private handleStartLoadingScreen(ZI)V
    .locals 6

    const-string/jumbo v0, "loading screen"

    const/4 v1, 0x0

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading screen shown by in-call UI timeout enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting loading screen... enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;

    invoke-direct {v3, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {v2, v0, v0, v3}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    const/16 v3, 0x14

    invoke-virtual {p0, v2, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStartLoadingScreen(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v3, 0x64

    if-eqz p1, :cond_4

    const/16 v4, 0x70

    goto :goto_2

    :cond_4
    const/16 v4, 0x71

    :goto_2
    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->launchHomeForDesktopMode()V

    if-eqz p1, :cond_5

    new-instance v2, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$1;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    invoke-static {v2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->access$200(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStartLoadingScreen(), Binding DesktopUiService... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private handleStopLoadingScreen(ZI)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading screen dismissed by timeout enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->verifyCurrentState()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v0

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    if-eqz p1, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    nop

    :goto_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->bringStackToForeground(III)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v2, 0x64

    const/16 v3, 0x6e

    invoke-virtual {v0, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStopLoadingScreen(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    const v2, 0x104029e

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_8
    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    invoke-static {v0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->access$300(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mReceiver is null!"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mService:Lcom/android/server/desktopmode/ModeChangerService;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Lcom/android/server/desktopmode/ModeChangerService;->scheduleUpdateDesktopMode(Z)V

    const-wide/32 v2, 0x80000

    const-string/jumbo v0, "loading screen"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$handleStartLoadingScreen$1(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private scheduleStartLoadingScreen(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZI)V

    return-void
.end method

.method private scheduleStartLoadingScreen(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZII)V

    return-void
.end method

.method private scheduleStartLoadingScreen(ZII)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    int-to-long v4, p3

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v4, -0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleStopLoadingScreenIfPossible()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible(), mWallpaperShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mStandaloneModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", InternalPresentation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentPresentationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ExternalPresentation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentPresentationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x32

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v2, 0x70

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/UiManager;->hasPresentation(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v2, 0x71

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/UiManager;->hasPresentation(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private setCustomConfigurations(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set custom configurations"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setDesktopModeInternal(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDesktopModeInternal(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->dismissDialog([I)V

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->cancelToasts()V

    iget-object v2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mService:Lcom/android/server/desktopmode/ModeChangerService;

    invoke-interface {v2}, Lcom/android/server/desktopmode/ModeChangerService;->cancelOngoingNotification()V

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    nop

    :cond_1
    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeToSurfaceFlinger(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mResolver:Landroid/content/ContentResolver;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->setCurrentLaunchPolicyMode(Landroid/content/ContentResolver;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->clearNotifications()V

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setCustomConfigurations(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, p1}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopModeInternal(Z)V

    return-void
.end method

.method private setModeChangeLock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/UiManager;->setChangingStandaloneMode(Z)V

    return-void
.end method

.method private usingNativeInCallUi()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "usingNativeInCallUi()=false, using T Phone"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "com.samsung.android.contacts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.telecom.InCallService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x20000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "usingNativeInCallUi()=false"

    invoke-static {v3, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "usingNativeInCallUi()=true"

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method private verifyCurrentState()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-eqz v5, :cond_3

    :cond_0
    if-nez v2, :cond_1

    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v5, :cond_3

    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    iget v5, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v5, v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget v5, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v5, v4, :cond_7

    if-ne v2, v4, :cond_7

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCurrentState(), Something is wrong! config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mStandaloneModeEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mCustomResolution.density="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCustomDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", desktopModeState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    const/16 v7, 0x3e8

    invoke-static {v6, v5, v7}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v6, v3, :cond_5

    if-eq v2, v4, :cond_6

    :cond_5
    iget v6, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v6, v4, :cond_7

    if-nez v2, :cond_7

    :cond_6
    sget-object v4, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v6, "Configuration is changed correctly, but was too late. Calling onConfigurationChanged() directly..."

    invoke-static {v4, v6}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v3, 0x0

    return v3

    :cond_7
    return v4
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mCurrentUiMode"

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsLockTaskModeEnabledAndSecured"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mStandaloneModeEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mTopStackId"

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mWallpaperShown"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getConfigurationState(Landroid/content/res/Configuration;)I
    .locals 7

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCustomDensity()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz v5, :cond_3

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getOriginalDensity(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    return v1

    :cond_5
    const/4 v1, -0x1

    return v1
.end method

.method getCurrentUiMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    return v0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged(), config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$-lQeQgAP4Nyetk9hJrpl_XPHF-Y;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    iput-object p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopStackId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getForegroundStackId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopStackId:I

    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopStackId(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->initLaunchPolicyDatabaseCache(Landroid/content/Context;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-object p3
.end method

.method setDesktopModeState(II)V
    .locals 6

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-direct {v0, p1, p2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    sget-object v3, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDesktopModeState(), newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    const/16 v3, 0x28

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeChanged(ZI)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_3
    return-void
.end method

.method varargs setSystemServices([Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->setSystemServices([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/android/server/desktopmode/SettingsHelper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    iput-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/android/server/desktopmode/HardwareManager;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/HardwareManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method startHome(Lcom/android/server/desktopmode/State;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHome()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

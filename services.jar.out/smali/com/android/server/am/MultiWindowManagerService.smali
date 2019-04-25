.class public Lcom/android/server/am/MultiWindowManagerService;
.super Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_SPLIT_SCREEN_PRIMARY_APP_LABEL:Ljava/lang/String; = "splitScreenPrimaryAppLabel"

.field private static final EXTRA_SPLIT_SCREEN_SECONDARY_APP_LABEL:Ljava/lang/String; = "splitScreenSecondaryAppLabel"

.field private static final MIN_ASPECT:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static final TAG_BIXBY:Ljava/lang/String; = "MultiWindowManager_Bixby"

.field private static mInstance:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field cachedDensityChanged:Z

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IMultiWindowCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredDetachSplitScreenPrimaryStack:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field final mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

.field private final mEnableController:Lcom/android/server/am/MultiWindowEnableController;

.field private final mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

.field private final mFreeformController:Lcom/android/server/am/FreeformController;

.field final mH:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mLastGlobalDensity:I

.field private mLaunchingPairActivities:Z

.field private final mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

.field final mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

.field private final mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mSystemResources:Landroid/content/res/Resources;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$0mQS-avniE5D0ivC2VCuUFPKjKo;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$0mQS-avniE5D0ivC2VCuUFPKjKo;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$s3HzvKqb7o69WP1SUBbxTjQU6To;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$s3HzvKqb7o69WP1SUBbxTjQU6To;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v2, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v3, v4}, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    const-class v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/am/CoreStateController;->createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/CoreStateController;->registerObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V

    new-instance v1, Lcom/android/server/am/MultiWindowEnableController;

    invoke-direct {v1, p1}, Lcom/android/server/am/MultiWindowEnableController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    new-instance v1, Lcom/android/server/am/FreeformController;

    invoke-direct {v1, p1, p0}, Lcom/android/server/am/FreeformController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;-><init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    new-instance v0, Lcom/android/server/am/EnsureDockedViewManager;

    invoke-direct {v0, p1}, Lcom/android/server/am/EnsureDockedViewManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    new-instance v0, Lcom/android/server/am/SnapWindowManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/am/SnapWindowManager;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    iput-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    new-instance v0, Lcom/android/server/am/DividerCloseNotificationController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DividerCloseNotificationController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->forAllRemoteListeners(Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleNresumeSupport()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleCornerGestureSupport()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowEnableController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleNfocusSupport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    return v0
.end method

.method private detachSplitScreenPrimaryStackIfNeededLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    :cond_1
    return-void
.end method

.method private forAllRemoteListeners(Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;->accept(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "MultiWindowManager"

    const-string/jumbo v2, "getLabelForTask, Task is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method private getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .locals 7

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "MultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v2, v0, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "MultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchActivityForTask, can\'t get ActivityInfo from ComponentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.MAIN"

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLaunchActivityForTask, can\'t find Activity by getLaunchIntentForPackage Task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "MultiWindowManager"

    const-string/jumbo v4, "getLaunchActivityForTask, RemoteException occurred"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v4

    :cond_3
    goto :goto_0

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_5
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public static getService()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    const-string v2, "MultiWindowManager"

    const-string v3, "CurrentUser does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_1

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_3

    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0xd3

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x4

    return v3

    :cond_3
    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_4

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_6

    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private isSwitchable(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to windowing mode are same."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const-string v3, "MultiWindowManager"

    const-string v4, "Cannot swapWindowingMode due to task\'s display is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_1
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task\'s satck is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task is in Pinned."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    :goto_3
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowVisibilityChanged(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onCoreStateChanged$3(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->dismissMultiWindowMode()V

    return-void
.end method

.method public static synthetic lambda$swapWindowingModeLocked$4(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLockedInSurfaceTransaction(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method private loadResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->loadResources()V

    return-void
.end method

.method private logCreateAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SPAC"

    const-string v1, "APSC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AddPair"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logCreateAppPairShortcut() param is null. primaryStackActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " secondaryStackActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private retrieveMultiWindowSettings()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "enable_freeform_support"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.software.picture_in_picture"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.software.activities_on_secondary_displays"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "force_resizable_activities"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v10, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_5

    if-nez v6, :cond_5

    if-nez v5, :cond_5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v10, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v2

    :goto_5
    if-nez v4, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    if-eqz v10, :cond_7

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v6, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v5, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v7, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    :goto_6
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setSupportsPictureInPicture(Z)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->isSwitchable(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;-><init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private swapWindowingModeLockedInSurfaceTransaction(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v2, p1

    nop

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_0
    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/android/server/am/TaskRecord;

    new-array v6, v0, [Z

    new-array v7, v0, [Lcom/android/server/am/ActivityDisplay;

    new-array v8, v0, [I

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v10, 0x1

    aput-object v3, v5, v10

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-ne v11, v4, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_1
    aput-boolean v11, v6, v9

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-ne v11, v4, :cond_2

    move v11, v10

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    aput-boolean v11, v6, v10

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    aput v11, v8, v9

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    aput v11, v8, v10

    move-object v11, v4

    iget-object v12, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    move-object v12, v11

    move v11, v9

    :goto_3
    :try_start_0
    array-length v13, v5

    if-ge v11, v13, :cond_6

    aget-object v13, v5, v11

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v14

    if-eqz v14, :cond_5

    aget-object v14, v7, v11

    aget v15, v8, v11

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {v14, v15, v0, v10}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    const/16 v16, 0x1

    aget-boolean v0, v6, v11

    if-eqz v0, :cond_3

    move/from16 v17, v9

    goto :goto_4

    :cond_3
    const/16 v17, 0x2

    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string/jumbo v20, "swapWindowingMode"

    move-object v14, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    if-eqz v12, :cond_4

    aget-boolean v0, v6, v11

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v15

    move-object v12, v0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "swapWindowingMode"

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v9, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private toggleCornerGestureSupport()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    :goto_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "corner gesture activate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "corner gesture deactivate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private toggleNfocusSupport()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "n focus activate."

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "n focus deactivate."

    :goto_0
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private toggleNresumeSupport()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    :goto_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string/jumbo v4, "n resume activate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string/jumbo v4, "n resume deactivate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const v4, 0x3f99999a    # 1.2f

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adjusted(bottom)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adjusted(right)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_USAGE_LOGGING:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const/4 v5, 0x5

    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MD_DEX_USAGE_LOGGING:Z

    if-eqz v11, :cond_5

    if-nez v2, :cond_a

    :cond_5
    const/4 v11, 0x3

    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v11, 0x4

    goto :goto_2

    :cond_6
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    :cond_7
    if-eqz v7, :cond_8

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const-string/jumbo v9, "null"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-eqz v8, :cond_9

    iget-object v9, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-nez v9, :cond_9

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_9
    const-string/jumbo v9, "null"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_4
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v4

    :goto_5
    if-ltz v12, :cond_e

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x0

    iget-object v4, v13, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_b

    iget-object v4, v13, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_b
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_c
    :goto_6
    if-eqz v14, :cond_d

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "|"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    if-lez v11, :cond_10

    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " | "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v4, v14

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MD_DEX_USAGE_LOGGING:Z

    if-eqz v13, :cond_f

    if-eqz v2, :cond_f

    const-string v13, "DFCO"

    aput-object v13, v12, v3

    const-string v3, "DFPA"

    aput-object v3, v12, v14

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v12, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const-string v13, "FFCO"

    aput-object v13, v12, v3

    const-string v3, "FFPA"

    const/4 v13, 0x1

    aput-object v3, v12, v13

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v12, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_10
    :goto_7
    return-void

    :cond_11
    :goto_8
    return-void
.end method

.method public final createAppPairShortcut()I
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    move-object v5, v7

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    move-object v6, v7

    :cond_1
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_2
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_6

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x11000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "component_first"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "component_second"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "userId_first"

    iget v11, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "userId_second"

    iget v11, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v12, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "MultiWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAppPairShortcut() splitScreenPrimaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " splitScreenSecondaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v10, :cond_5

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->logCreateAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v10, 0x0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_6
    :goto_0
    :try_start_2
    const-string v10, "MultiWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAppPairShortcut: Can\'t find AppPair Activity. splitScreenPrimaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " splitScreenSecondaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v10, 0xd2

    invoke-virtual {v4, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "splitScreenPrimaryAppLabel"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "splitScreenSecondaryAppLabel"

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v11, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v11, 0x2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    :cond_7
    :try_start_3
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v11, 0xd1

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    if-nez v8, :cond_8

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_8
    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v11, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_9
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createAppPairShortcut: Can\'t find AppPair Stack/Task. splitScreenPrimaryStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenPrimaryTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenSecondaryStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenSecondaryTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public deferDetachSplitScreenPrimaryStackLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    return-void
.end method

.method dismissMultiWindowMode()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v5, v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissSideScreen(I)V
    .locals 0

    return-void
.end method

.method public dockSideScreen()V
    .locals 0

    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_0

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, "MULTI WINDOW MANAGER SERVICE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "    MultiWindowEnabled"

    goto :goto_0

    :cond_1
    const-string v0, "    MultiWindowDisabled"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowEnableController;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformController;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    aget-object v4, p1, v3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/EnsureDockedViewManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "exitMultiWindow"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exitMultiWindow: cannot find stack, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_0

    const-string v6, "MultiWindowManager"

    goto :goto_1

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exitMultiWindow: invalid windowing mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v3, v7

    nop

    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method finishBooting()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->registerBroadcastReceiver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishBooting: mLastGlobalDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    return-void
.end method

.method getBaseDisplaySize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method getEnableController()Lcom/android/server/am/MultiWindowEnableController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    return-object v0
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0

    return v0
.end method

.method getFreeformController()Lcom/android/server/am/FreeformController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    return-object v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "getFreeformTasks()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/server/am/ActivityStack;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x1

    move-object v8, v6

    move v13, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityStack;->getRunningTasks(Ljava/util/List;IIIZI)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getFrontStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 4

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget v1, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p2, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    move-object v0, p1

    goto :goto_2

    :cond_6
    move-object v0, p2

    :goto_2
    return-object v0
.end method

.method public getMultiResumePrefVal()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowEnableController;->getMultiResumePrefVal()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMultiWindowModeStates(I)I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    or-int/lit8 v0, v0, 0x1

    nop

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    return-object v0
.end method

.method public getStayFocusActivityPrefVal()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowEnableController;->getStayFocusActivityPrefVal()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIdFromPackageName(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v4, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "MultiWindowManager_Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTaskIdFromPackageName, packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_5

    iget-object v6, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_1
    if-ltz v7, :cond_4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_3
    if-ltz v13, :cond_2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    if-eqz v14, :cond_1

    iget-object v15, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_1

    iget-object v15, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v10, "MultiWindowManager_Bixby"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string/jumbo v0, "getTaskIdFromPackageName, taskId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_1
    move/from16 v16, v0

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    goto :goto_3

    :cond_2
    move/from16 v16, v0

    goto :goto_2

    :cond_3
    move/from16 v16, v0

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_4
    move/from16 v16, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "getTopRecentTaskInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTopTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "getTopTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v3, v4, :cond_2

    nop

    move-object v5, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getVisibleTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideSideScreen()V
    .locals 0

    return-void
.end method

.method public initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPairWindowingMode(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public isCornerGestureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isFullscreenResizable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenSupportsSplitScreenWindowingMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchingPairActivitiesLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    return v0
.end method

.method public isMultiResumeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SnapWindowInternal;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStayFocusActivityEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "SPBY"

    const-string v1, "SPPA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    aput-object v6, v1, v3

    if-nez p2, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    move-object v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    nop

    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public maximizeSideScreen()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "maximizeSideScreen()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "MultiWindowManager"

    const-string/jumbo v5, "maximizeSideScreen: primary split-screen stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->setMaximizing(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    const-string/jumbo v4, "maximizeSideScreen"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->setMaximizing(Z)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->hideSideScreen(Z)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public minimizeAllFreeformTasks(IZI)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "minimizeAllFreeformTasks"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZI)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public minimizeFreeformTask(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "minimizeFreeformTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeFreeformTask: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/FreeformController;->moveTaskToBackLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "moveActivityTaskToBack"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/lit8 v3, p2, 0x1

    :try_start_1
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v4, v3, p3}, Lcom/android/server/am/FreeformController;->moveTaskToBackLocked(IZ)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAlreadyRunningOnDockedStack()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/DividerCloseNotificationController;->notifyAlreadyRunningOnDockedStack()V

    return-void
.end method

.method public notifyApplyFreeformMinimizePolicy(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyApplyFreeformMinimizePolicy ::  taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifyFocusStackChangeLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreefromWindowAnimationEnd(IIILandroid/graphics/Rect;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLidStateChanged(Z)V
    .locals 0

    return-void
.end method

.method notifyMultiWindowEnableChangeLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySideScreenDockSideChanged(I)V
    .locals 0

    return-void
.end method

.method public notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public notifySideScreenMenuVisibilityChanged(IZ)V
    .locals 0

    return-void
.end method

.method public notifySideScreenMinimizedChanged(Z)V
    .locals 0

    return-void
.end method

.method public notifySideScreenModeChanged(I)V
    .locals 0

    return-void
.end method

.method public notifySideScreenTaskSwitched(I)V
    .locals 0

    return-void
.end method

.method notifySnapWindowVisibilityChangeLocked(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConfigurationChangedLocked(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "MultiWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last non fullscreenBounds is null, skip scale bounds by density change, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->scale(F)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v1, v1, v1}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    :cond_1
    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    :cond_4
    and-int/lit16 v1, p1, 0x1c80

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_5
    return-void
.end method

.method public onCoreStateChanged(I)V
    .locals 8

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->retrieveMultiWindowSettings()V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v0

    const-string/jumbo v1, "mw_on"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v0

    const-string/jumbo v1, "mw_off"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleLetActivityStayFocus(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    :goto_1
    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_4

    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleReleaseActivityFocus(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_5
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeNonFocusedStackTaskIfNeededLocked(I)Z

    :cond_7
    goto :goto_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_c

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_7
    if-ltz v5, :cond_b

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v6, v3, v3, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_a
    :goto_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_d
    :goto_9
    return-void
.end method

.method public onPostCoreStateChanged(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiWindowEnableChangeLocked(Z)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public postStartPairActivities(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->detachSplitScreenPrimaryStackIfNeededLocked()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.app.appsedge"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EdgePair"

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HomeScreenPair"

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RecentsPair"

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/MultiWindowManagerService;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public preStartPairActivities()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerDividerCloseEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DividerCloseNotificationController;->registerEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerMultiWindowEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 0

    return-void
.end method

.method public removeFocusedTask()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    move-object v2, v4

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const-string v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, freeformStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, topTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_2
    goto :goto_1

    :cond_3
    :try_start_1
    const-string v3, "MultiWindowManager_Bixby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeFocusedTask, focusedTask="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_4
    :try_start_2
    const-string v3, "MultiWindowManager_Bixby"

    const-string/jumbo v4, "removeFocusedTask, There is no FocesedTask!! "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeFreeformTasks(I)Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REMOVE_TASKS"

    const-string/jumbo v3, "removeFreeformTasks()"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFreeformStackMinimized()Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_1

    iget-object v11, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v12, v10, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    iget-object v11, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v12, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v13, 0x0

    const-string/jumbo v14, "removeFreeformTasks()"

    move-object v15, v0

    const/4 v0, 0x1

    invoke-virtual {v11, v12, v0, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v2, v0

    nop

    move-object v0, v15

    goto :goto_1

    :cond_2
    move-object v15, v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v1, "MultiWindowManager_Bixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSearchedTask, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_2
    if-ltz v10, :cond_1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_0

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v4, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, task="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-object v0, v0, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resizeDockedStack(I)V
    .locals 8

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public resizeSideScreen(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resizeSideScreenStackWithScale(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method scheduleBindMinimizeContainerService(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method scheduleUnbindMinimizeContainerService(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCornerGestureEnabled(Z)V
    .locals 5

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setCornerGestureEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setCornerGestureEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/FreeformWindowController;->setFreeformAlpha(Landroid/os/IBinder;F)V

    return-void
.end method

.method public setMaxVisibleFreeformCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "setMaxVisibleFreeformCount"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, p1}, Lcom/android/server/am/FreeformController;->setMaxVisibleFreeformCountLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "setMaxVisibleFreeformCount"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/FreeformController;->setMaxVisibleFreeformCountLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMultiResumeEnabled(Z)V
    .locals 5

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setMultiResumeEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setMultiResumeEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "setMultiWindowEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setMultiWindowEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowEnableController;->setEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
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
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSideScreenMenuMode(II)V
    .locals 0

    return-void
.end method

.method public setSideScreenMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    return-void
.end method

.method public setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/SnapWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .locals 5

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSnapWindowEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setSnapWindowEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setSnapWindowEnabled(Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setStayFocusActivityEnabled(Z)V
    .locals 5

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setStayFocusActivityEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setStayFocusActivityEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EnsureDockedViewManager;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method showNotSupportMultiWindowToast(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotSupportMultiWindowToast: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showSideScreen()V
    .locals 0

    return-void
.end method

.method public showSideScreenRecentsActivity(IZ)V
    .locals 0

    return-void
.end method

.method public showSideScreenRecentsActivityInPlace(I)V
    .locals 0

    return-void
.end method

.method public showSideScreenTasks()V
    .locals 0

    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->showSnapWindowGuideView(I)V

    :cond_0
    return-void
.end method

.method public startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreeformController;->startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public startMovingSideScreen(II)V
    .locals 0

    return-void
.end method

.method public startMovingTopTask(IIII)V
    .locals 0

    return-void
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), isPointerInput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-object v5, v5, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, p2, p3, p4, v6}, Lcom/android/server/wm/FreeformWindowController;->startResizingFreeformTask(IIZI)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v7, "startResizingFreeformTask"

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4
    :goto_1
    :try_start_3
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask: failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public swapTaskWindowingModeFromSubWindowHandler(II)V
    .locals 0

    return-void
.end method

.method public swapTasksInSplitScreenMode()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "swapTasksInSplitScreenMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "SPAC"

    const-string v10, "Switch"

    invoke-static {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v6, "MultiWindowManager"

    const-string/jumbo v7, "swapTasksInSplitScreenMode. Unable to swap."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public swapWindowingMode(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "swapWindowingMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toggleSideScreen()V
    .locals 0

    return-void
.end method

.method public undockSideScreen()V
    .locals 0

    return-void
.end method

.method public unregisterDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterDividerCloseEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DividerCloseNotificationController;->unregisterEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterMultiWindowEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 0

    return-void
.end method

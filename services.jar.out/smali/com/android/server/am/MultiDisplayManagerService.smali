.class public Lcom/android/server/am/MultiDisplayManagerService;
.super Lcom/samsung/android/multidisplay/IMultiDisplayManager$Stub;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;,
        Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;,
        Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;,
        Lcom/android/server/am/MultiDisplayManagerService$H;,
        Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;,
        Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;,
        Lcom/android/server/am/MultiDisplayManagerService$UiHandler;
    }
.end annotation


# static fields
.field private static final KILL_PROCESS_REASON_DEX_DISPLAY_DISABLED:Ljava/lang/String; = "proc_dex_display_disabled"

.field private static final KILL_PROCESS_REASON_DISPLAY_CHANGED:Ljava/lang/String; = "proc_display_changed"

.field public static final METADATA_MULTI_DISPLAY_DO_NOT_SHOW_DISPLAYCHOOSER:Ljava/lang/String; = "com.samsung.android.multidisplay.do_not_show_displaychooser"

.field public static final METADATA_MULTI_DISPLAY_KEEP_PROCESS_ALIVE:Ljava/lang/String; = "com.samsung.android.multidisplay.keep_process_alive"

.field public static final METADATA_MULTI_DISPLAY_PRIMARY_DISPLAY:Ljava/lang/String; = "com.samsung.android.multidisplay.primarydisplay"

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MultiDisplayManager"

.field private static final WAIT_ACTIVITY_STOPPED_TIMEOUT:J = 0x1388L

.field private static final WAIT_TRANSITION_FINISH_TIMEOUT:J = 0xfa0L


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multidisplay/IMultiDisplayCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserDialogShowRequested:Z

.field private final mContext:Landroid/content/Context;

.field final mDexCompatController:Lcom/android/server/am/DexCompatController;

.field private mDexDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mDexDisplayActivated:Z

.field private final mDexDisplaySize:Landroid/graphics/Point;

.field final mDexPrimaryProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDisplayCompatController:Lcom/android/server/am/DisplayCompatController;

.field final mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mH:Lcom/android/server/am/MultiDisplayManagerService$H;

.field private mInStartResult:Z

.field mInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

.field private mIsDoNotShowAgainChecked:Z

.field final mKeepAliveProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDexMode:I

.field private mLastLidOpend:Z

.field private mLastNonResizableTopTaskId:I

.field private mLastReportedDexDisplayEnabled:Z

.field private mLastReportedDisplayCompatMode:Z

.field private final mLockTaskController:Lcom/android/server/am/LockTaskController;

.field mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

.field private final mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

.field private mRequstedDexDisplayEnabled:Z

.field mService:Lcom/android/server/am/ActivityManagerService;

.field private mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

.field final mShellCommand:Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field mWinnerPocSubDisplayMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager$Stub;-><init>()V

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$H;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastLidOpend:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDisplayCompatMode:Z

    iput v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWinnerPocSubDisplayMode:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mInStartResult:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    new-instance v2, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLockTaskController:Lcom/android/server/am/LockTaskController;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/DexCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/DexCompatController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    new-instance v0, Lcom/android/server/am/DisplayCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/DisplayCompatController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatController:Lcom/android/server/am/DisplayCompatController;

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mShellCommand:Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

    return-void
.end method

.method private NotifyUpdateRestartButtonLocked(IZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MultiDisplayManager"

    const-string v2, "NotifyUpdateRestartButtonLocked: StatusBarManagerInternal is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotifyUpdateRestartButtonLocked: tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isDisplayCompatTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->updateRestartButton(IZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/LockTaskController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLockTaskController:Lcom/android/server/am/LockTaskController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MultiDisplayManagerService;->hasVisibleTaskLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MultiDisplayManagerService;->moveProcessTasksToBackLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$H;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiDisplayManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/MultiDisplayManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MultiDisplayManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    return-void
.end method

.method private activateDexDisplayLocked(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eq v0, p1, :cond_1

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateDexDisplayLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->loadResources()V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->activateDexDisplayLocked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    const-string v0, "activateDexDisplayLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->updateDexModeIfNeededLocked(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDefaultDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    nop

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private getActivityWaitingToRun(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_1
    if-ltz v6, :cond_3

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_2

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_2

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MultiDisplayManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getActivityWaitingToRun: r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", app="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v8

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private getDexDisplayStateLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPackageProcesses([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private hasVisibleTaskLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    if-eq v1, p4, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, v2, p4}, Lcom/android/server/am/MultiDisplayManagerService;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method static isDefaultOrDexDisplay(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExcludedTaskOrNonRecentTask(), Task ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isPrimaryDefaultDisplay(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrimaryDesktopDisplay(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "desktop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isStoppedLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v2, :cond_1

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not stopped completely "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private killAllProcessInDexDisplayLocked(Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v9

    if-ne v9, v4, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/MultiDisplayManagerService;->allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killAllProcessInDexDisplayLocked: allStoppedAndInvisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    :cond_5
    goto :goto_3

    :cond_6
    return-void
.end method

.method public static synthetic lambda$checkDexLaunchPolicyLocked$1(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$checkDexLaunchPolicyLocked$2(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$updateDexModeIfNeededLocked$0(Lcom/android/server/am/MultiDisplayManagerService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->updateDesktopModeSettings(Landroid/net/Uri;)V

    return-void
.end method

.method private moveProcessTasksToBackLocked(Ljava/lang/String;II)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/MultiDisplayManagerService;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    const-string/jumbo v3, "moveProcessTasksToBackLocked"

    invoke-static {v2, v3}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->access$200(Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private moveTasksToFreeformLocked(II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTasksToFreeformLocked: no source d#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v5, :cond_1

    const-string v4, "MultiDisplayManager"

    const-string/jumbo v5, "moveTasksToFreeformLocked: no dex dual mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_1
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v0, v5, v5}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_0
    if-ltz v7, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MultiDisplayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "moveTasksToFreeformLocked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_1
    if-ltz v10, :cond_9

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    sget-boolean v12, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "MultiDisplayManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "moveTasksToFreeformLocked: task="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "MultiDisplayManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "moveTasksToFreeformLocked: prev overrideConfig="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {v1, v11}, Lcom/android/server/am/MultiDisplayManagerService;->isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v1, v11}, Lcom/android/server/am/MultiDisplayManagerService;->getNonStartableActivityInDexMode(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    if-ne v3, v4, :cond_7

    if-eqz v12, :cond_7

    iget-object v13, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_7

    iget-object v13, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v13

    if-eq v13, v3, :cond_7

    iget-object v13, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v14, v3}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    :cond_7
    invoke-direct {v1, v11, v3}, Lcom/android/server/am/MultiDisplayManagerService;->updateTaskStatus(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v13, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v14, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v15, 0x0

    const-string/jumbo v4, "moveTasksToFreeformLocked"

    invoke-virtual {v13, v14, v15, v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :goto_3
    add-int/lit8 v10, v10, -0x1

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v7, v7, -0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_a
    nop

    invoke-direct {v1, v3}, Lcom/android/server/am/MultiDisplayManagerService;->collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v8, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    goto :goto_4

    :cond_b
    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    iget-object v5, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v7, "moveTasksToFreeformLocked"

    invoke-virtual {v5, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private moveTasksToFullscreenLocked(II)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTasksToFullscreenLocked: no display #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_0
    nop

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/MultiDisplayManagerService;->collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_0
    if-ltz v6, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveTasksToFullscreenLocked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_1
    if-ltz v9, :cond_4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    sget-boolean v11, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: task="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: prev overrideConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v11

    move-object v15, v11

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v15, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v11}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    iget-object v11, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    const/16 v17, 0x0

    move-object v12, v10

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    sget-boolean v11, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: new overrideConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private reparentToDisplayAndStartPendingActivity(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentToDisplayAndStartPendingActivity: immediately="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->removeMessages(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private setRequestedDexDisplayEnabledLocked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedDexDisplayEnbaledLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateTaskStatus(Lcom/android/server/am/TaskRecord;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_0
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTaskStatus: new overrideConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private validDisplay(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method activityStoppedLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityStoppedLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->isStoppedLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MultiDisplayManager"

    const-string/jumbo v3, "reparentToDisplayAndStartPendingActivity from activityStopped"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v3, "proc_dex_display_disabled"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    :cond_4
    return-void
.end method

.method checkDexLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .locals 14

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v2

    and-int/lit8 v3, v2, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const v7, 0x8000

    and-int/2addr v7, v2

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    iget-object v8, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_9

    const v4, 0x10405e2

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v10, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$tnjd3oHUJf2pG352Rd8YSSlnlas;

    invoke-direct {v10, p0, v4}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$tnjd3oHUJf2pG352Rd8YSSlnlas;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_5
    :goto_4
    iget-object v9, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_6
    const-string v10, ""

    :goto_5
    const v11, 0x10405dd

    if-eqz v5, :cond_7

    const v11, 0x10405e1

    goto :goto_6

    :cond_7
    if-eqz v6, :cond_8

    const v11, 0x10405de

    :cond_8
    :goto_6
    new-array v12, v4, [Ljava/lang/Object;

    aput-object v10, v12, v1

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v13, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;

    invoke-direct {v13, p0, v1}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v4

    :cond_9
    return v1
.end method

.method public closeSystemDialogs(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->closeSystemDialogs(Ljava/lang/String;I)V

    return-void
.end method

.method createDisplayContextIfNeededLocked(Landroid/view/Display;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDisplayContext: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public createOrWakeupDesktopDisplay(III)I
    .locals 21

    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v13, p3

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "createOrWakeupDesktopDisplay"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOrWakeupDesktopDisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v3, :cond_0

    const-string v3, "Create"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeUp, currentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v4

    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), density="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/android/server/am/MultiDisplayManagerService;->setRequestedDexDisplayEnabledLocked(Z)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    move-object v11, v2

    iget-object v2, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v2, :cond_3

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "Desktop"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    const/16 v10, 0x409

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v11

    move v6, v14

    move v7, v15

    move v8, v13

    move-object/from16 v18, v11

    move-object v11, v0

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    :try_start_1
    invoke-virtual/range {v2 .. v13}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_2

    const-string v0, "MultiDisplayManager"

    const-string v2, "createDesktopDisplay: Failed to create"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiDisplayManagerService;->createDisplayContextIfNeededLocked(Landroid/view/Display;)V

    move/from16 v4, p3

    goto :goto_3

    :cond_3
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v14, v3, :cond_4

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v15, v3, :cond_4

    iget v3, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v4, p3

    if-eq v4, v3, :cond_5

    goto :goto_2

    :cond_4
    move/from16 v4, p3

    :goto_2
    :try_start_3
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v5, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v5, v14, v15, v4}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setNonDefaultDisplaySizeAndDensity(IIII)V

    :cond_5
    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/hardware/display/DisplayManagerGlobal;->wakeupOrSleepDexVirtualDisplay(Z)I

    :goto_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    move/from16 v4, p3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v19, v12

    move v4, v13

    :goto_4
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method disableDexDisplayIfNeededLocked()V
    .locals 4

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableDexDisplayIfNeededLocked: currentDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequstedDexDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->activateDexDisplayLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZI)Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->notifyDexDisplayConfiguredLocked(Z)V

    const-string/jumbo v1, "proc_dex_display_disabled"

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->killAllProcessInDexDisplayLocked(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->handleDexDisplayDisabled()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const-string/jumbo v1, "lastHomeIsNotExist_disableDex"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->resumeHomeStackTaskIfNeeded(Lcom/android/server/am/ActivityDisplay;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "MULTI DISPLAY MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDexDisplayActivated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mDexDisplaySize="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastDexMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mRequstedDexDisplayEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mLastReportedDexDisplayEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDexDisplay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDisplayContexts: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " {key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " ctx="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mKeepAliveProcessList: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " {packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDexPrimaryProcessList: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " {packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", app uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCallbacks:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method enableDexDisplayIfNeededLocked(Z)V
    .locals 7

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableDexDisplayIfNeededLocked: currentDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequstedDexDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->activateDexDisplayLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    :cond_1
    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v1}, Lcom/android/server/am/FreeformController;->resetToggleFreeformList()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0, v3, v0}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableDexDisplayIfNeededLocked: homeStack is created, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->notifyDexDisplayConfiguredLocked(Z)V

    :cond_5
    return-void
.end method

.method public getCurrentFocusDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getCurrentFocusDisplayId()I

    move-result v0

    return v0
.end method

.method getDexDisplaySizeLocked()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method getDexModeLocked()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "getDexTaskInfo"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDexTaskInfo: cannot found activity, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v6

    if-nez v6, :cond_1

    or-int/lit8 v5, v5, 0x1

    :cond_1
    iget v6, v4, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v5, v5, 0x4

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v4, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    iget v6, v4, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    if-ne v6, v7, :cond_3

    or-int/lit8 v5, v5, 0x2

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-boolean v6, v6, Lcom/android/server/am/FreeformController;->mIsDexDeveloperMode:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-boolean v6, v6, Lcom/android/server/am/FreeformController;->mIsForcedResized:Z

    if-eqz v6, :cond_4

    or-int/lit8 v5, v5, 0x2

    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

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

.method getDisplayConfiguration(I)Landroid/content/res/Configuration;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getNonStartableActivityInDexMode(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getResources(I)Landroid/content/res/Resources;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "getRunnigTasks()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v8, v1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    move-object v2, v0

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->getRunnigTasksInDisplay(Ljava/util/List;IIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object v0
.end method

.method getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    if-nez v8, :cond_1

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTaskLocked: processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v10

    :cond_1
    add-int/lit8 v0, v9, -0x1

    :goto_0
    move v11, v0

    if-ltz v11, :cond_d

    iget-object v0, v7, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v12

    iget v0, v12, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    move/from16 v13, p4

    if-ne v0, v13, :cond_2

    nop

    move/from16 v12, p2

    move/from16 v19, v9

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v12}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v14

    add-int/lit8 v0, v14, -0x1

    :goto_1
    move v15, v0

    if-ltz v15, :cond_c

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    move v4, v0

    if-ltz v4, :cond_b

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3

    nop

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto/16 :goto_6

    :cond_3
    if-eqz p3, :cond_4

    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_4

    nop

    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto/16 :goto_7

    :cond_4
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v17, 0x0

    :goto_3
    move/from16 v18, v17

    move/from16 v19, v9

    move/from16 v9, v18

    if-ge v9, v1, :cond_9

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_8

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v1

    move-object/from16 v22, v12

    move/from16 v12, p2

    if-ne v1, v12, :cond_6

    new-instance v17, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move/from16 v20, v16

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    :goto_4
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v23, v2

    move-object v2, v3

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v25, v4

    move-object v4, v8

    move-object/from16 v26, v5

    move v5, v12

    move-object/from16 v27, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/TaskRecord;ZLjava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTaskLocked: add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    goto :goto_5

    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto :goto_5

    :cond_8
    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    :goto_5
    add-int/lit8 v17, v9, 0x1

    move/from16 v9, v19

    move/from16 v1, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_3

    :cond_9
    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    :cond_a
    :goto_6
    add-int/lit8 v0, v25, -0x1

    move/from16 v9, v19

    move-object/from16 v12, v22

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_2

    :cond_b
    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    :goto_7
    add-int/lit8 v0, v15, -0x1

    move/from16 v9, v19

    move-object/from16 v12, v22

    goto/16 :goto_1

    :cond_c
    move/from16 v12, p2

    move/from16 v19, v9

    :goto_8
    add-int/lit8 v0, v11, -0x1

    move/from16 v9, v19

    goto/16 :goto_0

    :cond_d
    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v19, v9

    return-object v10
.end method

.method public getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodToChangeMode(II)Z
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "readyToExit"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    move/from16 v4, p1

    if-eq v4, v0, :cond_8

    if-ne v2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x5

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "goodToChangeMode: no stack, windowingMode="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :try_start_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v16

    move-object/from16 v9, v17

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-nez v0, :cond_3

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string/jumbo v3, "goodToChangeMode: no topRunning. t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    move-object/from16 v20, v3

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v1, :cond_4

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode: stateNotNeeded, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/android/server/am/MultiDisplayManagerService$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    monitor-exit v8

    goto :goto_5

    :pswitch_0
    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode: t#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " haveState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_1
    nop

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v9, 0x0

    goto/16 :goto_3

    :goto_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :cond_5
    move-object/from16 v19, v0

    move v1, v9

    :try_start_3
    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode stack#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numTasks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v9, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v19, v0

    move v1, v9

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_8
    :goto_6
    const-string v0, "MultiDisplayManager"

    const-string/jumbo v1, "goodToChangeMode: dual-mode is not need to wait stopped sate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method initProcessDisplayIdLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->getActivityWaitingToRun(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService;->getPackageProcesses([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eq v5, p1, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    const-string v4, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init process display: set packageProcessId, displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", same_package_proc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init process display: mKeepProcessAlive=true, app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->primaryDisplayName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6

    move v0, v1

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init process display: primaryDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDisplayId(I)V

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init process display: final displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method isDeXDisabledFromStandAlone()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isDexDisplayProcessLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGamePackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "gamemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public killPackageProcess(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    const-string/jumbo v0, "proc_display_changed"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z
    .locals 9

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p2}, Lcom/android/server/am/MultiDisplayManagerService;->isDefaultOrDexDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eq v2, p1, :cond_2

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring remove of inactive process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    const-string/jumbo v4, "proc_display_changed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v4

    if-ne v4, p2, :cond_4

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already in same display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    if-ne p2, v5, :cond_6

    iget-boolean v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dex display is not activated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not kill keepProcessAlive process, app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :cond_8
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v6, :cond_a

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not kill system process, app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v3

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killProcessIfNeededLocked: reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setDisplayId(I)V

    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    iget-object v6, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, p1, v3, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    return v5
.end method

.method loadResources(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DexCompatController;->loadResources(I)V

    return-void
.end method

.method moveTaskToDisplayBackLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p2

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    if-ne v1, v9, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    if-nez v10, :cond_1

    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToDisplayBackLocked: Skip RemovingTask, Parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v2, v2, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v1, v2, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    :cond_3
    move-object v11, v1

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v11

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToDisplayBackLocked: to d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object/from16 v13, p3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v12

    move-object v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_5
    return-void
.end method

.method moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, p1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyAppTransitionFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppTransitionFinished. isTransitionFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->transitionFinished()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v1, v1, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    const-string/jumbo v3, "notifyAppTransitionFinished"

    invoke-static {v2, v3}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->access$200(Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_1
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

.method public notifyAppWindowGone(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppWindowGone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_1
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

.method notifyDexDisplayConfiguredLocked(Z)V
    .locals 5

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDexDisplayConfiguredLocked: dexDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->onDesktopDisplayConfigured(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method onConfigurationChangedLocked(II)V
    .locals 4

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChangedLocked: display#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0x1c80

    if-eqz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->loadResources(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->loadResources(I)V

    nop

    :cond_5
    :goto_1
    const-string/jumbo v1, "onConfigurationChangedLocked"

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->updateDexModeIfNeededLocked(Ljava/lang/String;)V

    return-void
.end method

.method parseApplicationInfoLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.multidisplay.primarydisplay"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.multidisplay.primarydisplay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->primaryDisplayName:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseApplicationInfoLocked: primary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.multidisplay.keep_process_alive"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.multidisplay.keep_process_alive"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    :cond_4
    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseApplicationInfoLocked: keepProcessAlive=true from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string/jumbo v4, "metadata"

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "list"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public registerDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerDisplayFocusCallback"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

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

.method public registerDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

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

.method removeDisplayContextIfNeededLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisplayContext: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public requestKeepDisplay(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method resetLastNonResizableTopTaskIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    if-eq v2, v3, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService;->setLastNonResizableTopTaskIdLocked(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restartTask(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "releaseDisplayCompatMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreLastNonResizableTopTaskIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "restoreLastNonResizableTopTaskIfNeeded()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeHomeStackTaskIfNeeded(Lcom/android/server/am/ActivityDisplay;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    return-void
.end method

.method public rotateCompatTask(Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "rotateCompatTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotateCompatTask: cannot find ActivityRecord, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v4, v4, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/DexCompatController;->rotateCompatTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

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

.method public scaleFreeformForNewScreenSize(IFF)V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_1

    :cond_0
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v7

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v8, :cond_1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    cmpl-float v7, p3, v7

    if-eqz v7, :cond_2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    :cond_4
    goto :goto_1

    :cond_5
    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method scheduleDispayCompatCallbackIfNeededLocked()V
    .locals 0

    return-void
.end method

.method scheduleDisplayConfigurationLocked(Landroid/content/res/Configuration;I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfiguraton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    :try_start_0
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiDisplayManagerService;->isDexDisplayProcessLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    move-object v6, v1

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/DexCompatController;->isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;ILcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v10, v6, v8, v0}, Lcom/android/server/am/DexCompatController;->applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean v7, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    if-eqz v7, :cond_2

    iput-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v7

    iput v4, v6, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_2
    :goto_1
    sget-boolean v7, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MultiDisplayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending to proc{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}, new config"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", displayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-static {v6}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v6

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method scheudleForceResizedTaskCallbackIfNeededLocked()V
    .locals 0

    return-void
.end method

.method public setChooserDialogShowRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    return-void
.end method

.method public setCurrentFocusDisplayId(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDeviceDefaultDisplay(I)V
    .locals 0

    return-void
.end method

.method setLastNonResizableTopTaskIdLocked(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastNonResizableTopTaskIdLocked : storedTopTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setMultiDisplayManager(Lcom/samsung/android/multidisplay/IMultiDisplayManager;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/DexCompatController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    return-void
.end method

.method public shouldGoHomeInSubDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method showDisplayChooserLocked(Lcom/android/server/am/DisplayChooserInfo;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDisplayChooserLocked on #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/DisplayChooserInfo;->skipToShow()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, p1}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->setChooserDialogShowRequested(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip to show DisplayChoosermDoNotShowAgainChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V

    return-void
.end method

.method public sleepDesktopDisplay()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "sleepDesktopDisplay"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v1

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sleepDesktopDisplay: currentDisplayState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService;->setRequestedDexDisplayEnabledLocked(Z)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->wakeupOrSleepDexVirtualDisplay(Z)I

    move-result v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    move v2, v5

    nop

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/MultiDisplayManagerService;->disableDexDisplayIfNeededLocked()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterDisplayCompatModeWatcher"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

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

.method public unregisterDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

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

.method updateDexModeIfNeededLocked(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-eq v2, v1, :cond_11

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDesktopModeIfNeededLocked, lastDexMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentDexMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v2}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_3

    const-string v6, "desktop_on"

    invoke-virtual {v2, v6}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v6, "desktop_off"

    invoke-virtual {v2, v6}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-nez v1, :cond_8

    iget v7, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v7, v5, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDexModeIfNeededLocked: cannot found, d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    const/4 v9, 0x5

    invoke-virtual {v8, v9, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v14, v15}, Lcom/android/server/am/TaskRecord;->getOverrideBounds(Landroid/graphics/Rect;)V

    iget-object v6, v14, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v6, v7, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    goto :goto_4

    :cond_7
    :goto_6
    goto :goto_7

    :cond_8
    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v7, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;

    invoke-direct {v7, v0}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_7
    iget v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v6, v3, :cond_b

    if-ne v1, v5, :cond_a

    const/4 v6, 0x0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    invoke-direct {v0, v6, v6}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFullscreenLocked(II)V

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    if-ne v1, v3, :cond_e

    iget-object v7, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    if-eqz v7, :cond_c

    :goto_8
    const/4 v6, 0x3

    invoke-virtual {v7, v6, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    iget v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v6, v5, :cond_d

    invoke-direct {v0, v5, v10}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    :cond_d
    invoke-direct {v0, v10, v10}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    goto :goto_a

    :cond_e
    :goto_9
    move v10, v6

    :goto_a
    iput v1, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    move v3, v10

    :goto_b
    iget-object v5, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v5

    const-string v6, "MultiDisplayManager"

    if-eqz v3, :cond_10

    const-string v7, "Desktop On"

    goto :goto_c

    :cond_10
    const-string v7, "Desktop Off"

    :goto_c
    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/android/server/am/MultiWindowEnableController;->setForceEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_d

    :cond_11
    move-object/from16 v4, p1

    :goto_d
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "updateTaskPositionInTaskBar"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTaskPositionInTaskBar: taskPositions is null, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    move-object v4, p1

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiDisplayManagerInternal;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
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

.class public Lcom/android/server/am/SamsungActivityManagerService;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;,
        Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;,
        Lcom/android/server/am/SamsungActivityManagerService$BgHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$UiHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$MainHandler;
    }
.end annotation


# static fields
.field static final ACTION_KDDI_SCREEN_PINNING_CONDITION:Ljava/lang/String; = "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

.field static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final CSC_VERSION:Ljava/lang/String;

.field static final DEBUG:Z = true

.field private static final DEBUG_VS:Z

.field private static final INTENT_ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field private static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field static final META_DATA_DISABLE_SNAPSHOT:Ljava/lang/String; = "com.samsung.android.disableSnapshot"

.field static final META_DATA_EDGE_TSP_DEADZONE:Ljava/lang/String; = "com.samsung.android.edge.tsp.deadzone"

.field static final META_DATA_EDGE_TSP_DEADZONE2:Ljava/lang/String; = "com.samsung.android.edge.tsp.deadzone_v2"

.field static final META_DATA_KEEP_ALIVE:Ljava/lang/String; = "com.samsung.android.keepalive.density"

.field static final META_DATA_PERSISTENT_DOWNLOADABLE:Ljava/lang/String; = "com.samsung.android.persistent.downloadable"

.field static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field static final PERSISTENT_MASK:I = 0x9

.field private static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field private static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field static final TAG:Ljava/lang/String; = "SamsungActivityManager"

.field private static final TASKWATCHER_FLAG_CONCERN_FRONT:I = 0x1

.field private static final TASKWATCHER_FLAG_MOVED:I = 0x4

.field private static final TASKWATCHER_FLAG_REMOVED:I = 0x2

.field private static final TASKWATCHER_FLAG_TASK_DESCRIPTION_SET:I = 0x8

.field private static mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_INTENT_RECORD_WATCHER_THRESHOLD_CNT:I

.field final mAllTaskWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mBgHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field final mCoreStateController:Lcom/android/server/am/CoreStateController;

.field final mForceKeepAliveProcesses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mForceKillPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceStopReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

.field private mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

.field private final mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mTaskState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskWatchers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/TaskRecord;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUiHandler:Landroid/os/Handler;

.field private mVSClientActivity:Lcom/android/server/am/ActivityRecord;

.field private mVSMode:Z

.field private mVSVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    const-string/jumbo v0, "ril.official_cscver"

    const-string v1, "DUMMY"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pre_boot_csc.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->PENDING_INTENT_RECORD_WATCHER_THRESHOLD_CNT:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->initRelaxedBroadcastActions()V

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;-><init>(Lcom/android/server/am/SamsungActivityManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    const-string v1, "com.tencent.mm:exdevice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "installPackageLI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg removed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg changed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/CoreStateController;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/CoreStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$100(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    const-string v0, "SamsungActivityManager"

    const-string v1, "SamsungActivityManagerService :: created"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private clearStackLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    return-void
.end method

.method private getDefaultHomePackageName()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-eq v3, v0, :cond_1

    if-eqz v3, :cond_1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getSamsungActivityManagerService(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SamsungActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    return-object v0
.end method

.method private varargs getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    array-length v4, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, p2, v5

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getTopStackWithStandardActivityType(Lcom/android/server/am/ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopTask(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    return v3

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private initRelaxedBroadcastActions()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string v6, "com.samsung.android.keepalive.density"

    invoke-static {v5, v4, v6}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private setVSVisible(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSVisible(Z)V

    const-string/jumbo v0, "sys.vs.visible"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VS now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "visible"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "hidden"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private visibilityUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastQueue;->addDelayedBrToDropBox(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    :cond_0
    return-void
.end method

.method public addCustomStartingWindowData(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->addCustomStartingWindowData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method addPendingIntentRecordLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_1

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PendingIntent are generated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$1000(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method public bringStackToForeground(III)V
    .locals 10

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->isAutoOpenLastAppAllowed()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v1, v3

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungActivityManager"

    const-string v4, "bringStackToForeground(), auto_open_last_app is forcibly disabled by Knox Custom SDK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_open_last_app"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_open_last_app"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungActivityManager"

    const-string v3, "bringStackToForeground(), auto_open_last_app is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_7

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stack is empty, stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    if-eqz v1, :cond_9

    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->stayInForeground(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not whitelisted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_9
    :try_start_2
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stackId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", targetDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", targetWindowingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_b

    const-string v6, "SamsungActivityManager"

    const-string v7, "bringStackToForeground(): rootActivity is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_b
    :try_start_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v8

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v8, v9, v4, v6}, Lcom/android/server/am/DisplayChooserInfo;->createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v8, v7, p2}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V

    :cond_c
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SamsungActivityManager"

    const-string v1, "clearCustomStartingWindowDataForAllUsers, package is null or empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearHomeStack(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHomeStack(), displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultHomePkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tasks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearHomeStack(), removing task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "SamsungActivityManagerService.clearHomeStack"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_2
    goto :goto_1

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

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public clearHomeStackForKnoxKiosk(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHomeStackForKnoxKiosk(), displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultHomePkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tasks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearHomeStackForKnoxKiosk(), removing task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "SamsungActivityManagerService.clearHomeStack"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_2
    goto :goto_1

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

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public clearVSDisplay(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    :cond_2
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

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    move v3, v2

    :cond_0
    sget v4, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    if-ne v3, v2, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v4, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    move v3, v4

    :cond_4
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v3, v5, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iget-object v2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ne v3, v4, :cond_4

    return-void
.end method

.method public dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$900(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$700(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string v3, "com.samsung.android.persistent.downloadable"

    invoke-static {v2, v11, v3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    move-object/from16 v13, p9

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceStopPackageLocked with revised flags for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v13, p9

    :cond_1
    move/from16 v14, p3

    move/from16 v15, p6

    :goto_0
    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v2, v11

    move/from16 v3, p2

    move v4, v14

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v15

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .locals 1

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundStackId(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->getTopStackWithStandardActivityType(Lcom/android/server/am/ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getFreeformStackCount(Z)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object v1, v3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    :goto_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForegroundStackId(displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getProcessDisplayVS(ILjava/lang/String;)I
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I

    move-result v3

    move v4, v3

    if-eq v3, v1, :cond_0

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "found matching caller process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    move v5, v4

    if-eq v4, v1, :cond_2

    monitor-exit v0

    return v5

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return v1
.end method

.method public getResumedStackVS()Lcom/android/server/am/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$600(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskInfoFromTaskIdLocked(III)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string/jumbo v2, "userId"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "taskType"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "lastTaskDescription"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "resizeable"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "displayId"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "componentName"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hideVSStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inVSMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    return v0
.end method

.method installSystemProviders()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowEnableController;->init(I)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v0}, Lcom/android/server/am/CoreStateController;->init()V

    return-void
.end method

.method public isCscVerChanged()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "DUMMY"

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SamsungActivityManager"

    const-string v3, "csc version of property is wrong"

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v2, "DUMMY"

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x400

    invoke-direct {v4, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "SamsungActivityManager"

    const-string v5, "Failure reading pre boot csc"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    :cond_1
    :goto_2
    throw v3

    :catch_3
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_2
    :goto_3
    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTopTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTrimApplicaionsScheduled()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVSClientStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v11, "name"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "kill_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v0, v12

    const-string/jumbo v12, "keep_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v7, v12

    const-string/jumbo v12, "skip_sdk_version_check"

    invoke-virtual {v4, v12, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide v4, v5

    goto/16 :goto_9

    :cond_0
    :try_start_1
    const-string/jumbo v11, "multi-resolution"

    :goto_0
    move-object v12, v7

    move-object v7, v0

    iget-object v13, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move v15, v10

    :goto_1
    if-ge v15, v14, :cond_c

    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v17, v16

    const/16 v16, 0x0

    :goto_2
    move/from16 v18, v16

    move/from16 v19, v14

    move/from16 v4, v17

    move/from16 v14, v18

    if-ge v14, v4, :cond_b

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v16

    move/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v4, v20

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v23, v5

    const/16 v5, 0x13

    if-ne v10, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move/from16 v25, v5

    :try_start_4
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v26, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    move/from16 v25, v5

    :cond_2
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v27, v5

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v25, 0x1

    goto :goto_4

    :cond_3
    nop

    move-object/from16 v5, v27

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v8, :cond_6

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    move/from16 v26, v6

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v10, 0x1

    :cond_6
    :goto_5
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v1, v4}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    or-int/2addr v5, v6

    iget-boolean v6, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v6, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    if-nez v5, :cond_a

    if-nez v10, :cond_a

    if-nez v9, :cond_8

    if-ltz v2, :cond_8

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v6, v2, :cond_a

    :cond_8
    if-ltz v3, :cond_9

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-gt v6, v3, :cond_9

    if-nez v25, :cond_9

    if-nez v26, :cond_9

    const-string/jumbo v6, "force-keep-alive"

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_a
    :goto_6
    add-int/lit8 v16, v14, 0x1

    move/from16 v14, v19

    move/from16 v17, v21

    move-object/from16 v10, v22

    move-wide/from16 v5, v23

    move/from16 v2, p1

    move-object/from16 v4, p3

    goto/16 :goto_2

    :cond_b
    move-wide/from16 v23, v5

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    move/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v10, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-wide v4, v5

    goto :goto_8

    :cond_c
    move-wide/from16 v23, v5

    move/from16 v19, v14

    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_d

    :try_start_6
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "kill all background except(policy="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v5, v6, v14, v15, v10}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_8

    :cond_d
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v4, v23

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_9

    :catchall_4
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_8

    :catchall_5
    move-exception v0

    move-wide v4, v5

    :goto_8
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    move-wide v4, v5

    :goto_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SamsungActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public logIllegalArgumentExceptionLocked(Landroid/os/IBinder;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTopOfTask failed: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_1

    :cond_4
    nop

    :goto_1
    return v1

    :cond_5
    return v1
.end method

.method public moveTaskToBackVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "com.android.systemui"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x9

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    const/16 v1, -0x320

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    :cond_1
    return-void
.end method

.method public notifyTaskDescriptionSetLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskDescriptionSetLocked: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskMovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskMoved: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskRemoved: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    xor-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTaskToFront: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_3

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTaskToFront: [no change] taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_SupportBroadcastScreenPinning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .locals 4

    const-string v0, ", [disp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ", fin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ", dur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v2, p3

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq v12, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq v12, v0, :cond_1

    const/16 v0, 0x403

    if-eq v12, v0, :cond_1

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SamsungActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v13, v0, [Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v15, v2

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-wide v8, v2

    :try_start_3
    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x1

    iget-object v3, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const-string/jumbo v16, "queryRegisteredReceiverPackages"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v17, 0x0

    move v3, v10

    move v4, v11

    move/from16 v5, p3

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    :try_start_4
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual {v3, v15, v4, v0, v2}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_3

    :try_start_7
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    iget-object v7, v6, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v13, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_5

    :cond_3
    :goto_2
    move-wide/from16 v5, v18

    :try_start_8
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v4, p2

    :goto_3
    move-wide/from16 v5, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v4, p2

    move-wide/from16 v5, v18

    move/from16 v2, p3

    :goto_4
    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v4, p2

    move-wide v5, v8

    move/from16 v2, p3

    :goto_5
    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v2, p3

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v3, p1

    :goto_6
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object v15, v3

    :goto_7
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_7
.end method

.method registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string v0, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerTaskWatcher: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_0

    const-string v3, "ALL"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", watcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V

    :cond_3
    :goto_1
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

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot registerTaskWatcher from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removeAllRecentTasksLocked(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    if-nez v1, :cond_0

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/SamsungActivityManagerService;->removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method removePendingIntentRecordLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 5

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    and-int/lit8 v2, p2, 0x10

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v4, "sem-remove-id-task"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    return-void
.end method

.method public removeTaskLocked(II)Z
    .locals 4

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_4

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p2, 0x10

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v3, "sem-remove-task"

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_3
    throw v0

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->removeAllRecentTasksLocked(I)Z

    move-result v0

    return v0
.end method

.method resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$800(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void
.end method

.method public resumedActivityVS(Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumedActivityVS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    :cond_4
    return-void
.end method

.method public scheduleTrimApplicaions(Z)V
    .locals 2

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    and-int/lit8 v7, p2, 0x8

    if-eqz v7, :cond_4

    move v1, v2

    nop

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_4
    if-lez v2, :cond_f

    add-int/lit8 v2, v2, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/ITaskWatcher;

    if-eqz v1, :cond_6

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_5

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskDescriptionSet for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    :cond_6
    if-eqz v4, :cond_a

    if-eqz v3, :cond_8

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_7

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskToFront for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    goto :goto_5

    :cond_8
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_9

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskToBack for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V

    :cond_a
    :goto_5
    if-eqz v5, :cond_c

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_b

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskRemoved for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    :cond_c
    if-eqz v6, :cond_e

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_d

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskMoved for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskMoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v7

    :cond_e
    :goto_6
    goto/16 :goto_4

    :cond_f
    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_10
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    :goto_7
    if-lez v7, :cond_1c

    add-int/lit8 v7, v7, -0x1

    :try_start_1
    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/ITaskWatcher;

    if-eqz v1, :cond_13

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_12

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskDescriptionSet for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    :cond_13
    if-eqz v4, :cond_17

    if-eqz v3, :cond_15

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_14

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToFront for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    goto :goto_8

    :cond_15
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_16

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToBack for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V

    :cond_17
    :goto_8
    if-eqz v5, :cond_19

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_18

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskRemoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    :cond_19
    if-eqz v6, :cond_1b

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_1a

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskMoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskMoved(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v8

    :cond_1b
    :goto_9
    goto/16 :goto_7

    :cond_1c
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-eqz v5, :cond_1e

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_1d

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Watched task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has been removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public setImageForCustomStartingWindow(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    nop

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    nop

    :cond_0
    move-object v7, v0

    move v6, p2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setImageForCustomStartingWindow(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setImageForCustomStartingWindow, failed to set customImageForPackage by IOException, component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImageForCustomStartingWindow, activityInfo is null, component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :catch_1
    move-exception v0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setImageForCustomStartingWindow, failed to get activityInfo, component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public setSupportsPictureInPicture(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting setSupportsPictureInPicture to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    :cond_1
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

.method public setUpdateConfigurationCallerLocked(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v2, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$800(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setVSMode(ZLandroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVSMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

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

.method setWindowManager(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    return-void
.end method

.method public startPausingVS(Lcom/android/server/am/ActivityRecord;ZZLcom/android/server/am/ActivityRecord;Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_4

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPausingVS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_2

    if-ne v0, v5, :cond_1

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_1
    invoke-virtual {v5, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method startUser(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/MultiWindowEnableController;->startUserLocked(IZ)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/CoreStateController;->startUserLocked(IZZ)V

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

.method stopUserLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/MultiWindowEnableController;->stopUserLocked(IZ)V

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/CoreStateController;->stopUserLocked(IZ)V

    return-void
.end method

.method unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string v0, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterTaskWatcher: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_0

    const-string v3, "ALL"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", watcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V

    :cond_3
    :goto_1
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

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregisterTaskWatcher from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateOomAdj()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

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

.method public updatePreBootCscFile()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    sget-object v2, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "SamsungActivityManager"

    const-string v4, "Failure writing last done pre-boot receivers"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw v2
.end method

.method public updatedTopTaskVS(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->getTopTask(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyUpdatedDisplayTopTask(II)V

    return-void
.end method

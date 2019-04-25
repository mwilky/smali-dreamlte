.class public Lcom/att/iqi/GenUI46;
.super Ljava/lang/Object;
.source "GenUI46.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/GenUI46$MessageBundle;,
        Lcom/att/iqi/GenUI46$HandlerCallback;,
        Lcom/att/iqi/GenUI46$ForEachApplicationHandler;
    }
.end annotation


# static fields
.field private static final COLLECT_CPU_AND_MEM_STATS:I = 0x1


# instance fields
.field private COLLECT_NONE:I

.field private final mAppInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/att/iqi/ApplicationInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private mCollectMask:I

.field private mContext:Landroid/content/Context;

.field private mGenUI46:Lcom/att/iqi/FilteredAppMetric;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/GenUI46;->COLLECT_NONE:I

    iget v0, p0, Lcom/att/iqi/GenUI46;->COLLECT_NONE:I

    iput v0, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    iput-object p1, p0, Lcom/att/iqi/GenUI46;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/GenUI46;->mClient:Lcom/att/iqi/lib/IQIManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "amg"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/GenUI46;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/att/iqi/GenUI46$HandlerCallback;

    invoke-direct {v3, p0, v1}, Lcom/att/iqi/GenUI46$HandlerCallback;-><init>(Lcom/att/iqi/GenUI46;Lcom/att/iqi/GenUI46$1;)V

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/att/iqi/GenUI46;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Couldn\'t get looper for GenUI46"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/att/iqi/GenUI46;->mHandler:Landroid/os/Handler;

    :goto_0
    invoke-direct {p0}, Lcom/att/iqi/GenUI46;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/att/iqi/GenUI46;Lcom/att/iqi/ApplicationInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/GenUI46;->checkProcessErrors(Lcom/att/iqi/ApplicationInformation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/att/iqi/GenUI46;)Lcom/att/iqi/lib/IQIManager;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mClient:Lcom/att/iqi/lib/IQIManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/att/iqi/GenUI46;Lcom/att/iqi/ApplicationInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/GenUI46;->stopTrackingCpuAndMemStats(Lcom/att/iqi/ApplicationInformation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/att/iqi/GenUI46;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkProcessErrors(Lcom/att/iqi/ApplicationInformation;)V
    .locals 4

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v3, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-virtual {p1, v3}, Lcom/att/iqi/ApplicationInformation;->hasProcessID(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMG Crashed Process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " belongs to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/ApplicationInformation;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAppInfo(Ljava/lang/String;I)Lcom/att/iqi/ApplicationInformation;
    .locals 4

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/ApplicationInformation;

    if-nez v1, :cond_0

    new-instance v2, Lcom/att/iqi/ApplicationInformation;

    iget-object v3, p0, Lcom/att/iqi/GenUI46;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v3, p2}, Lcom/att/iqi/ApplicationInformation;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    move-object v1, v2

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getExistingAppInfo(Ljava/lang/String;)Lcom/att/iqi/ApplicationInformation;
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/ApplicationInformation;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/att/iqi/ApplicationInformation;->getMetricList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Init Gen UI46"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/att/iqi/FilteredAppMetric;

    new-instance v1, Lcom/att/iqi/ComparableUI46;

    invoke-direct {v1}, Lcom/att/iqi/ComparableUI46;-><init>()V

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/att/iqi/FilteredAppMetric;-><init>(Lcom/att/iqi/ComparableUI46;Lcom/att/iqi/GenUI46;Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/GenUI46;->mGenUI46:Lcom/att/iqi/FilteredAppMetric;

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/att/iqi/MemAndCPUStats;

    invoke-direct {v1, v0}, Lcom/att/iqi/MemAndCPUStats;-><init>(Landroid/app/ActivityManager;)V

    iput-object v1, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "UI46 registered"

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private stopTrackingCpuAndMemStats(Lcom/att/iqi/ApplicationInformation;)V
    .locals 5

    invoke-virtual {p1}, Lcom/att/iqi/ApplicationInformation;->getPIDRecords()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/att/iqi/PIDRecord;

    invoke-virtual {v3, v4}, Lcom/att/iqi/MemAndCPUStats;->unregisterPIDRecord(Lcom/att/iqi/PIDRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/att/iqi/ApplicationInformation;->getPIDRecords()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private updateNetStatsAndProcessAppExit(Lcom/att/iqi/GenUI46$MessageBundle;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public forEachApplication(Lcom/att/iqi/GenUI46$ForEachApplicationHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/GenUI46;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/ApplicationInformation;

    invoke-interface {p1, v2}, Lcom/att/iqi/GenUI46$ForEachApplicationHandler;->apply(Lcom/att/iqi/ApplicationInformation;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProfileChanged()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/GenUI46;->mClient:Lcom/att/iqi/lib/IQIManager;

    sget-object v1, Lcom/att/iqi/lib/metrics/ui/UI46;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0

    iget v1, p0, Lcom/att/iqi/GenUI46;->COLLECT_NONE:I

    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    iget v2, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProfileChanged received but nothing changed UI46 ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-nez v0, :cond_3

    iget v2, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-virtual {v2}, Lcom/att/iqi/MemAndCPUStats;->stopTracking()V

    :cond_3
    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mGenUI46:Lcom/att/iqi/FilteredAppMetric;

    invoke-virtual {v2}, Lcom/att/iqi/FilteredAppMetric;->onProfileChanged()V

    iget v2, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-virtual {v2}, Lcom/att/iqi/MemAndCPUStats;->startTracking()V

    :cond_4
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMG profile changed: trackMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_5
    iput v1, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processAppExit(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/att/iqi/GenUI46;->getExistingAppInfo(Ljava/lang/String;)Lcom/att/iqi/ApplicationInformation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/att/iqi/ApplicationInformation;->getActivePIDsCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/att/iqi/GenUI46;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/att/iqi/GenUI46$MessageBundle;

    invoke-direct {v1, v0}, Lcom/att/iqi/GenUI46$MessageBundle;-><init>(Lcom/att/iqi/ApplicationInformation;)V

    invoke-direct {p0, v1}, Lcom/att/iqi/GenUI46;->updateNetStatsAndProcessAppExit(Lcom/att/iqi/GenUI46$MessageBundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/att/iqi/ApplicationInformation;->getPIDRecords()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/PIDRecord;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/att/iqi/PIDRecord;->setIsAlive(Z)V

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-virtual {v2, v1}, Lcom/att/iqi/MemAndCPUStats;->unregisterPIDRecord(Lcom/att/iqi/PIDRecord;)V

    :cond_1
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exited but package still has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/att/iqi/ApplicationInformation;->getActivePIDsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active PIDs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exit notification for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but we are not tracking it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logw(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public processAppStart(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lcom/att/iqi/GenUI46;->getAppInfo(Ljava/lang/String;I)Lcom/att/iqi/ApplicationInformation;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/PIDRecord;

    invoke-direct {v1, p2}, Lcom/att/iqi/PIDRecord;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/att/iqi/ApplicationInformation;->addPIDRecord(Lcom/att/iqi/PIDRecord;)V

    invoke-virtual {v1}, Lcom/att/iqi/PIDRecord;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/att/iqi/GenUI46;->mCollectMask:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/att/iqi/GenUI46;->mMemAndCPUStats:Lcom/att/iqi/MemAndCPUStats;

    invoke-virtual {v2, v1}, Lcom/att/iqi/MemAndCPUStats;->registerPIDRecord(Lcom/att/iqi/PIDRecord;)V

    :cond_0
    return-void
.end method

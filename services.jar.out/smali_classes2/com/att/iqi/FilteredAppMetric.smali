.class public Lcom/att/iqi/FilteredAppMetric;
.super Ljava/lang/Object;
.source "FilteredAppMetric.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# instance fields
.field private mAM:Lcom/att/iqi/GenUI46;

.field private mCM:Lcom/att/iqi/ComparableUI46;

.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private mEventHandler:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

.field private mFilteringEnabled:Z

.field private final mSyncStats:Ljava/lang/Object;

.field private mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/att/iqi/lib/Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/att/iqi/ComparableUI46;Lcom/att/iqi/GenUI46;Lcom/att/iqi/lib/IQIManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mSyncStats:Ljava/lang/Object;

    new-instance v0, Lcom/att/iqi/FilteredAppMetric$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/FilteredAppMetric$1;-><init>(Lcom/att/iqi/FilteredAppMetric;)V

    iput-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mEventHandler:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    iput-object p2, p0, Lcom/att/iqi/FilteredAppMetric;->mAM:Lcom/att/iqi/GenUI46;

    iput-object p1, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    iput-object p3, p0, Lcom/att/iqi/FilteredAppMetric;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    invoke-virtual {v1}, Lcom/att/iqi/ComparableUI46;->getMetricId()Lcom/att/iqi/lib/Metric$ID;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/att/iqi/lib/IQIManager;->registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    invoke-virtual {v1}, Lcom/att/iqi/ComparableUI46;->getMetricId()Lcom/att/iqi/lib/Metric$ID;

    move-result-object v1

    iget-object v2, p0, Lcom/att/iqi/FilteredAppMetric;->mEventHandler:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/IQIManager;->registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/FilteredAppMetric;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/att/iqi/FilteredAppMetric;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/att/iqi/FilteredAppMetric;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/att/iqi/FilteredAppMetric;->extractString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/att/iqi/FilteredAppMetric;)Lcom/att/iqi/ComparableUI46;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    return-object v0
.end method

.method static synthetic access$300(Lcom/att/iqi/FilteredAppMetric;Lcom/att/iqi/ApplicationInformation;Lcom/att/iqi/lib/Metric;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/FilteredAppMetric;->filterApplication(Lcom/att/iqi/ApplicationInformation;Lcom/att/iqi/lib/Metric;)Z

    move-result v0

    return v0
.end method

.method private extractString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method private filterApplication(Lcom/att/iqi/ApplicationInformation;Lcom/att/iqi/lib/Metric;)Z
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/att/iqi/ApplicationInformation;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/att/iqi/FilteredAppMetric;->mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/Metric;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    invoke-virtual {v3, v2, p2}, Lcom/att/iqi/ComparableUI46;->metricChanged(Lcom/att/iqi/lib/Metric;Lcom/att/iqi/lib/Metric;)Z

    move-result v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtering found old metric UI46 for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " setting pass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/att/iqi/FilteredAppMetric;->mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0
.end method

.method private declared-synchronized submitComparableMetric()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;

    invoke-virtual {v1}, Lcom/att/iqi/ComparableUI46;->metricSort()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mSyncStats:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/att/iqi/FilteredAppMetric$1Filter;

    invoke-direct {v2, p0, v0}, Lcom/att/iqi/FilteredAppMetric$1Filter;-><init>(Lcom/att/iqi/FilteredAppMetric;Ljava/util/TreeSet;)V

    iget-object v3, p0, Lcom/att/iqi/FilteredAppMetric;->mAM:Lcom/att/iqi/GenUI46;

    invoke-virtual {v3, v2}, Lcom/att/iqi/GenUI46;->forEachApplication(Lcom/att/iqi/GenUI46$ForEachApplicationHandler;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/Metric;

    iget-object v3, p0, Lcom/att/iqi/FilteredAppMetric;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-virtual {v3, v2}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mSyncStats:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Clearing seen Metrics: UI46"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/FilteredAppMetric;->submitComparableMetric()V

    return-void
.end method

.method public onProfileChanged()V
    .locals 1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Profile changed event UI46 mFilteringEnabled set to false"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z

    invoke-virtual {p0}, Lcom/att/iqi/FilteredAppMetric;->clear()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing seen Metric: UI46 for exited app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric;->mSyncStats:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric;->mUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

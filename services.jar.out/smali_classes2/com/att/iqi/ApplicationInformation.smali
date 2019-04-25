.class public Lcom/att/iqi/ApplicationInformation;
.super Ljava/lang/Object;
.source "ApplicationInformation.java"


# static fields
.field private static final METRIC_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstanceID:I

.field private mLongApplicationID:J

.field private mPackageName:Ljava/lang/String;

.field private mPidRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/PIDRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUserID:I

.field private final metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/att/iqi/lib/Metric$ID;

    sget-object v1, Lcom/att/iqi/lib/metrics/ui/UI46;->ID:Lcom/att/iqi/lib/Metric$ID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/ApplicationInformation;->METRIC_IDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/ApplicationInformation;->mInstanceID:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/att/iqi/ApplicationInformation;->mUserID:I

    new-instance v1, Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/ui/UI46;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/att/iqi/ApplicationInformation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/att/iqi/AppUtil;->generateLongAppInstanceId(Ljava/lang/String;Landroid/content/pm/PackageManager;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/att/iqi/ApplicationInformation;->mLongApplicationID:J

    if-eq p3, v0, :cond_0

    iput p3, p0, Lcom/att/iqi/ApplicationInformation;->mInstanceID:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Bad run app id"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/att/iqi/ApplicationInformation;->initUserID()V

    return-void
.end method

.method private getMaxMemory()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/att/iqi/PIDRecord;

    invoke-virtual {v4}, Lcom/att/iqi/PIDRecord;->getMaxReportedMemory()J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method static getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/att/iqi/ApplicationInformation;->METRIC_IDS:Ljava/util/List;

    return-object v0
.end method

.method private getTotalCPUTime()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/PIDRecord;

    invoke-virtual {v3}, Lcom/att/iqi/PIDRecord;->getTotalCPUTime()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hasPIDRecord(Lcom/att/iqi/PIDRecord;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/att/iqi/ApplicationInformation;->hasProcessID(I)Z

    move-result v0

    return v0
.end method

.method private initUserID()V
    .locals 3

    iget-object v0, p0, Lcom/att/iqi/ApplicationInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2}, Lcom/att/iqi/ApplicationInformation;->setUserID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception thrown in ApplicationInformation.initUserID()"

    invoke-static {v2, v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private submitUI46(Lcom/att/iqi/lib/IQIManager;)V
    .locals 4

    invoke-virtual {p0}, Lcom/att/iqi/ApplicationInformation;->currentUI46()Lcom/att/iqi/lib/metrics/ui/UI46;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    invoke-direct {p0}, Lcom/att/iqi/ApplicationInformation;->getMaxMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->getMaxMemoryUsed()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max Memory value for UI46 is too large for DWORD field type: Real value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addPIDRecord(Lcom/att/iqi/PIDRecord;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/ApplicationInformation;->hasPIDRecord(Lcom/att/iqi/PIDRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInformation - addPIDRecord for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded with processID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is already bound to package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method currentUI46()Lcom/att/iqi/lib/metrics/ui/UI46;
    .locals 7

    invoke-virtual {p0}, Lcom/att/iqi/ApplicationInformation;->getActivePIDsCount()I

    move-result v0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    int-to-short v1, v1

    invoke-direct {p0}, Lcom/att/iqi/ApplicationInformation;->getTotalCPUTime()I

    move-result v2

    invoke-direct {p0}, Lcom/att/iqi/ApplicationInformation;->getMaxMemory()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppWatcher - currentUI46 for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", instance id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/att/iqi/ApplicationInformation;->mInstanceID:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : CPUTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, Max Memory Used = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bytes, Num Processes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-wide v5, p0, Lcom/att/iqi/ApplicationInformation;->mLongApplicationID:J

    invoke-virtual {v4, v5, v6}, Lcom/att/iqi/lib/metrics/ui/UI46;->setInstAppID(J)Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    iget v5, p0, Lcom/att/iqi/ApplicationInformation;->mInstanceID:I

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/ui/UI46;->setRunAppID(I)Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v4, v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->setElapsedCpu(I)Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v4, v3}, Lcom/att/iqi/lib/metrics/ui/UI46;->setMaxMemoryUsed(I)Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v4, v1}, Lcom/att/iqi/lib/metrics/ui/UI46;->setRunProcesses(S)Lcom/att/iqi/lib/metrics/ui/UI46;

    iget-object v4, p0, Lcom/att/iqi/ApplicationInformation;->metricUI46:Lcom/att/iqi/lib/metrics/ui/UI46;

    return-object v4
.end method

.method getActivePIDsCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/PIDRecord;

    invoke-virtual {v3}, Lcom/att/iqi/PIDRecord;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getPIDRecords()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/PIDRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method hasProcessID(I)Z
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/ApplicationInformation;->mPidRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setUserID(I)V
    .locals 2

    iget v0, p0, Lcom/att/iqi/ApplicationInformation;->mUserID:I

    if-gez v0, :cond_0

    iput p1, p0, Lcom/att/iqi/ApplicationInformation;->mUserID:I

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInformation - setUID succeeded for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/att/iqi/ApplicationInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instance id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/ApplicationInformation;->mInstanceID:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/ApplicationInformation;->mUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method submitExitMetrics(Lcom/att/iqi/lib/IQIManager;)V
    .locals 1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "submit exit metrics"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/att/iqi/ApplicationInformation;->submitUI46(Lcom/att/iqi/lib/IQIManager;)V

    return-void
.end method

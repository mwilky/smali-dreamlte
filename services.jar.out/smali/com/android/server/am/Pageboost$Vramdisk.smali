.class final Lcom/android/server/am/Pageboost$Vramdisk;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Vramdisk"
.end annotation


# static fields
.field private static final APP_TIME_DIFF_DEFAULT:I = 0x32

.field private static final DEVICE_SEGMENT_HIGH_RAMSIZE:J = 0x200000000L

.field private static final DEVICE_SEGMENT_MID_RAMSIZE:J = 0x180000000L

.field private static ENABLED:Z = false

.field private static final EVICTION_MAX_APP_NUM:I = 0x1

.field private static final EVICTION_MAX_QUOTA:I = 0x2

.field private static final EVICTION_NO_NEED:I = 0x0

.field private static MAX_APP_NUM:I = 0x0

.field private static MAX_QUOTA:J = 0x0L

.field private static MAX_QUOTA_PER_APP:J = 0x0L

.field private static final MEASURE_NEED_IN_VRAMDISK:I = 0x2

.field private static final MEASURE_NEED_NOT_IN_VRAMDISK:I = 0x3

.field private static final MEASURE_NOT_SUFFICIENTLY:I = 0x1

.field private static final MEASURE_SUFFICIENTLY:I = 0x0

.field private static final MIN_MEASURE_NUM:I = 0xa

.field private static final OLD_APP_EXEC_SEQ_DISTANCE:I

.field private static final PRESERVE_NEED_MEASURE_APP_RATIO:I = 0x14

.field private static SHRINK_SCALE:J = 0x0L

.field private static final TOTAL_MAX_MEASURE_NUM:I = 0x32

.field private static final TOTAL_MIN_MEASURE_NUM:I = 0x1e


# instance fields
.field private amount_mlock_limit:J

.field private amount_mlocked:J

.field private mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field private num_apps:I

.field private num_need_measure:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    const-wide/32 v0, 0x40000000

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    const-wide/32 v0, 0x10000000

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.shrink_scale"

    const-string v1, "200"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->SHRINK_SCALE:J

    sget v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/Pageboost$Vramdisk;->OLD_APP_EXEC_SEQ_DISTANCE:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    iput v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/Pageboost$Vramdisk;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->checkMlockLimit()V

    return-void
.end method

.method private checkActiveAndUpdate(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$600(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSeqNum()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$700(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    return v0

    :cond_0
    return v1
.end method

.method private checkMlockLimit()V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    const-wide/16 v5, 0xa

    div-long/2addr v3, v5

    sget-wide v5, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    sget-wide v7, Lcom/android/server/am/Pageboost$Vramdisk;->SHRINK_SCALE:J

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    sget-wide v7, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    add-long/2addr v7, v5

    iget-wide v11, v0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    sub-long v11, v1, v11

    cmp-long v13, v11, v5

    if-gez v13, :cond_2

    sub-long v9, v5, v11

    div-long/2addr v9, v3

    iget-wide v14, v0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    sget-wide v17, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    cmp-long v13, v14, v17

    if-eqz v13, :cond_1

    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-eqz v15, :cond_1

    mul-long v13, v9, v3

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/server/am/Pageboost$Vramdisk;->updateMlockLimit(JJ)V

    iget-wide v13, v0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    sget-wide v17, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    cmp-long v13, v13, v17

    if-nez v13, :cond_0

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vramdisk disabled"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "vramdisk disabled"

    invoke-static {v13}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/am/Pageboost$Vramdisk;->eviction(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)Z

    :cond_1
    goto :goto_1

    :cond_2
    cmp-long v13, v11, v7

    if-lez v13, :cond_5

    sub-long v13, v11, v7

    div-long/2addr v13, v3

    iget-wide v9, v0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    sget-wide v17, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    cmp-long v9, v9, v17

    if-nez v9, :cond_4

    mul-long v9, v13, v3

    sget-wide v17, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    const-wide/16 v19, 0x2

    div-long v17, v17, v19

    cmp-long v9, v9, v17

    if-ltz v9, :cond_3

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "vramdisk enabled"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "vramdisk enabled"

    invoke-static {v9}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-wide/16 v13, 0x0

    :cond_4
    :goto_0
    iget-wide v9, v0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-eqz v9, :cond_5

    cmp-long v9, v13, v15

    if-eqz v9, :cond_5

    mul-long v9, v13, v3

    neg-long v9, v9

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/server/am/Pageboost$Vramdisk;->updateMlockLimit(JJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private eviction(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/Pageboost$Vramdisk;->needEviction(IJ)I

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->findOldestApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v4

    move-object v1, v4

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->checkActiveAndUpdate(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "oldest"

    if-ne v3, v6, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    invoke-virtual {p0, v1, v4, v7}, Lcom/android/server/am/Pageboost$Vramdisk;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/Pageboost$Vramdisk;->needEviction(IJ)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_3
    if-nez v0, :cond_7

    :cond_4
    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->findUnprofitable()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeDiff(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v7

    if-nez v4, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeDiff(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no victim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "unprofitable"

    if-ne v3, v6, :cond_6

    move v7, v2

    goto :goto_1

    :cond_6
    move v7, v5

    :goto_1
    invoke-virtual {p0, v1, v4, v7}, Lcom/android/server/am/Pageboost$Vramdisk;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/Pageboost$Vramdisk;->needEviction(IJ)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    nop

    :cond_7
    :goto_2
    return v0
.end method

.method private findOldestApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v1, v1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getSeqNumDiff()I

    move-result v3

    sget v4, Lcom/android/server/am/Pageboost$Vramdisk;->OLD_APP_EXEC_SEQ_DISTANCE:I

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    nop

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findUnprofitable()Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->needPreserveNeedMeasureApp()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeDiff(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v6

    if-nez v1, :cond_2

    move-object v1, v5

    move v2, v6

    goto :goto_1

    :cond_2
    if-le v2, v6, :cond_3

    move-object v1, v5

    move v2, v6

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getExecTimeDiff(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x32

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getAccExecTime(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v2

    int-to-long v5, v2

    div-long/2addr v3, v5

    long-to-int v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getAccExecTime(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v4, v6

    long-to-int v3, v4

    sub-int v1, v2, v3

    nop

    :goto_0
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$900(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v2

    if-lez v2, :cond_1

    if-lez v1, :cond_0

    div-int/lit8 v2, v1, 0xa

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    div-int/lit8 v2, v1, 0xa

    sub-int/2addr v1, v2

    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget v1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    if-lt v1, v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    nop

    :goto_1
    move v0, v2

    return v0
.end method

.method private needEviction(IJ)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/2addr v0, p1

    sget v1, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private needPreserveNeedMeasureApp()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    mul-int/lit8 v0, v0, 0x14

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setConfiguration(J)V
    .locals 4

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dram size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.debug.appnum"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.debug.quota"

    const-string v1, "1024"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    goto :goto_0

    :cond_0
    const-wide v2, 0x200000000L

    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    sput-boolean v1, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    const-wide v0, 0x80000000L

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    goto :goto_0

    :cond_1
    const-wide v2, 0x180000000L

    cmp-long v0, p0, v2

    if-ltz v0, :cond_2

    sput-boolean v1, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    const-wide/32 v0, 0x40000000

    sput-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    :goto_0
    return-void
.end method

.method private updateMlockLimit(JJ)V
    .locals 6

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "free : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk update mlocklimit,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)Z
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    iget-wide v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v4, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v4, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    iget-object v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    invoke-static {p1, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$700(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    invoke-virtual {p1, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getExecCnt(I)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    :cond_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vramdisk hit "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk hit,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return v5

    :cond_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vramdisk miss "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vramdisk miss,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    return v2

    :cond_3
    iget-wide v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    sget-wide v8, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    iget-wide v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    goto :goto_0

    :cond_4
    sget-wide v6, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    :goto_0
    move-wide v0, v6

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->eviction(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vramdisk failed to evict properly"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "no apps in vramdisk"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_6
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vramdisk add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    invoke-static {p1, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$700(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    :cond_7
    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    iget-object v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    invoke-virtual {p1, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setVramdiskState(I)V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vramdisk stat : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk add,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/am/Pageboost$VramdiskdProxy;->executeCmd(ILjava/lang/String;)V

    return v5

    :cond_8
    :goto_2
    return v2
.end method

.method public applyPreferredAppList(Ljava/util/LinkedList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyPreferredAppList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$800(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getVramdiskState()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vramdisk remove failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in the list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-wide v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-wide v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    goto :goto_0

    :cond_2
    sget-wide v0, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    :goto_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setVramdiskState(I)V

    invoke-static {p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$700(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-direct {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->getExecTimeMeasureBalance(Lcom/android/server/am/Pageboost$PageboostAppInfo;)I

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    :cond_3
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk stat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vramdisk remove,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_need_measure:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$VramdiskdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[max] app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_APP_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount per app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA_PER_APP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[cur] app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlock_limit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[shrink] scale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->SHRINK_SCALE:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", memlow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/Pageboost$Vramdisk;->MAX_QUOTA:J

    sget-wide v4, Lcom/android/server/am/Pageboost$Vramdisk;->SHRINK_SCALE:J

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "per-app info : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

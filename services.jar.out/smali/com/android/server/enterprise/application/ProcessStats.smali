.class public Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z = true

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkingProcsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/application/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iput-boolean p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    array-length v0, v11

    :goto_0
    move v13, v0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v14, v0

    move v0, v12

    :goto_1
    move v15, v0

    if-ge v15, v13, :cond_14

    aget v4, v11, v15

    if-gez v4, :cond_1

    move v13, v4

    nop

    move v9, v7

    move-object/from16 v30, v11

    const/4 v7, 0x1

    goto/16 :goto_e

    :cond_1
    const/4 v0, 0x0

    if-ge v1, v14, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v3, v2

    const/16 v16, 0x2

    if-eqz v3, :cond_a

    iget v2, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v2, v4, :cond_a

    iput-boolean v12, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iput-boolean v12, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    add-int/lit8 v18, v1, 0x1

    const-string v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_3

    const-string/jumbo v5, "process"

    goto :goto_3

    :cond_3
    const-string/jumbo v5, "thread"

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v5, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    iget-object v12, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v20, v1

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_4

    nop

    move-object/from16 v30, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_4
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    const/4 v0, 0x1

    aget-wide v9, v5, v0

    move/from16 v22, v13

    aget-wide v12, v5, v16

    move/from16 v23, v14

    move/from16 v24, v15

    const/4 v0, 0x3

    aget-wide v14, v5, v0

    move-wide/from16 v25, v1

    iget-wide v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_6

    iget-wide v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v0, v14, v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iget-boolean v1, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v1, :cond_5

    iput-boolean v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    :cond_5
    move-object/from16 v30, v11

    goto :goto_4

    :cond_6
    iget-boolean v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v0, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto :goto_5

    :cond_7
    const/4 v2, 0x1

    :goto_5
    if-gez v7, :cond_8

    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v1, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v27, v5

    iget-object v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v6

    move-wide/from16 v28, v20

    move-wide/from16 v7, v25

    move/from16 v19, v2

    move v2, v4

    move-object/from16 v30, v11

    move-object v11, v3

    move/from16 v3, v16

    move/from16 v31, v4

    move-object/from16 v4, v17

    move-object/from16 v16, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_6

    :cond_8
    move/from16 v31, v4

    move-object/from16 v16, v5

    move-object/from16 v30, v11

    move-wide/from16 v28, v20

    move-wide/from16 v7, v25

    move-object v11, v3

    :goto_6
    const-string v0, "Load"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " utime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " majfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    sub-long v0, v28, v0

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    move-wide/from16 v0, v28

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    sub-long v2, v12, v2

    long-to-int v2, v2

    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v2, v14, v2

    long-to-int v2, v2

    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-wide v12, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iput-wide v14, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    sub-long v2, v7, v2

    long-to-int v2, v2

    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    sub-long v2, v9, v2

    long-to-int v2, v2

    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-wide v7, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    iput-wide v9, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    goto :goto_7

    :cond_9
    move-object/from16 v30, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    const/4 v5, 0x1

    :goto_7
    move v7, v5

    move/from16 v1, v18

    move/from16 v14, v23

    move-object/from16 v8, p5

    move/from16 v9, p2

    goto/16 :goto_d

    :cond_a
    move/from16 v31, v4

    move-object/from16 v30, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    const/4 v5, 0x1

    move-object v11, v3

    if-eqz v11, :cond_d

    iget v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move/from16 v7, v31

    if-le v2, v7, :cond_b

    move-object/from16 v8, p5

    move/from16 v9, p2

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-boolean v5, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v5, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v23, -0x1

    const-string v0, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    if-gez v9, :cond_c

    const-string/jumbo v3, "process"

    goto :goto_8

    :cond_c
    const-string/jumbo v3, "thread"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v24, -0x1

    nop

    move v7, v5

    move/from16 v24, v15

    goto/16 :goto_d

    :cond_d
    move/from16 v7, v31

    move-object/from16 v8, p5

    move/from16 v9, p2

    :goto_9
    new-instance v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    invoke-direct {v2, v7, v9, v3}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(IIZ)V

    move-object v10, v2

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v14, v23, 0x1

    const-string v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v9, :cond_e

    const-string/jumbo v3, "process"

    goto :goto_a

    :cond_e
    const-string/jumbo v3, "thread"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    iget-object v13, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    iget-object v1, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v1, v2, v12, v13, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v5, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    const/4 v0, 0x0

    aget-object v1, v12, v0

    iput-object v1, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    aget-wide v0, v13, v5

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    aget-wide v0, v13, v16

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    const/4 v0, 0x3

    aget-wide v0, v13, v0

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    const/4 v0, 0x4

    aget-wide v0, v13, v0

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    goto :goto_b

    :cond_f
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    :goto_b
    if-gez v9, :cond_11

    iget-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v1, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    iget-object v15, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v0, v6

    move v2, v7

    move/from16 v32, v7

    move v7, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_c

    :cond_10
    move/from16 v32, v7

    move v7, v5

    goto :goto_c

    :cond_11
    move/from16 v32, v7

    move v7, v5

    iget-boolean v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_12

    iget-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    :cond_12
    :goto_c
    const-string v0, "Load"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " utime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " majfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-boolean v7, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-nez p3, :cond_13

    iget-boolean v1, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_13

    iput-boolean v7, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    :cond_13
    move v1, v11

    :goto_d
    add-int/lit8 v2, v24, 0x1

    move v0, v2

    move v7, v9

    move/from16 v13, v22

    move-object/from16 v11, v30

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_14
    move v9, v7

    move-object/from16 v30, v11

    move/from16 v22, v13

    move/from16 v23, v14

    const/4 v7, 0x1

    :goto_e
    if-ge v1, v14, :cond_15

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v3, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v3, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v3, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-boolean v7, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v7, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed pid "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_15
    return-object v30
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v1, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    if-nez p1, :cond_0

    new-array v0, v5, [J

    new-array v3, v5, [J

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    const-string v8, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v1, v8, v9}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v1, v8, v9}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_4

    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, "\n "

    invoke-direct {v10, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v3, v11

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v13, v15

    aput-wide v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_2

    goto :goto_5

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "ProcessStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First time : Speed/Time = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v5, v11, -0x1

    move-object/from16 v17, v10

    :try_start_1
    aget-wide v9, v3, v5

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v11, -0x1

    aget-wide v9, v6, v5

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object/from16 v17, v10

    :goto_2
    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    :goto_3
    const-string v5, "ProcessStats"

    const-string v9, "Unable to parse time_in_state"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    nop

    move-object/from16 v10, v17

    const/16 v5, 0x3c

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    move v11, v0

    :cond_5
    :goto_5
    if-nez p1, :cond_6

    new-array v0, v11, [J

    new-array v2, v11, [J

    iput-object v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    iget-object v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v5, v0, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_6
    move-object/from16 v0, p1

    :goto_6
    return-object v0
.end method

.method private getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 18

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const/4 v0, 0x1

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p5

    :goto_0
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez v10, :cond_2

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v10

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-lez v11, :cond_3

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    if-lez v12, :cond_4

    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-gtz v13, :cond_5

    if-lez v14, :cond_7

    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez v13, :cond_6

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " minor"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    if-lez v14, :cond_7

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez v3, :cond_2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    aget-byte v6, v6, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v6

    :cond_2
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_5

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    :cond_3
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_3
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_5

    :catch_5
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_4
    goto :goto_5

    :catch_6
    move-exception v3

    :cond_4
    :goto_5
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-object v1
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v7, v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    :cond_4
    return-void
.end method

.method public final buildWorkingProcsMap()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final countStats()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    nop

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    iget-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v0
.end method

.method public final getLastIdleTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStatByPid(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .locals 3

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 33

    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v12, v0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v11, v0

    const-string v0, "CPU usage from "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms to "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms to "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms later"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v16, v0, v2

    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    sub-long v18, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_1

    mul-long v0, v16, v3

    div-long v0, v0, v18

    nop

    :cond_1
    move-wide v9, v0

    cmp-long v0, v9, v3

    if-eqz v0, :cond_2

    const-string v0, " with "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% awake"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int v8, v0, v1

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " over sample time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_1
    move v6, v0

    if-ge v6, v7, :cond_8

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v0, :cond_3

    const-string v0, " +"

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    iget-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v0, :cond_4

    const-string v0, " -"

    goto :goto_2

    :cond_4
    const-string v0, "  "

    goto :goto_2

    :goto_3
    iget v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v21, 0x5

    add-long v0, v0, v21

    long-to-int v0, v0

    div-int/lit8 v23, v0, 0xa

    iget v1, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v27, v9

    iget v10, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iget v9, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    move/from16 v29, v0

    move-object v0, v13

    move/from16 v30, v1

    move-object v1, v11

    move-object/from16 v31, v5

    move/from16 v5, v23

    move/from16 v23, v6

    move/from16 v6, v30

    move/from16 v30, v7

    move/from16 v7, v29

    move/from16 v29, v8

    move/from16 v8, v24

    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v25, v10

    move/from16 v10, v26

    move-object/from16 v26, v11

    move/from16 v11, v25

    move-object v14, v12

    move/from16 v12, v24

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v15, v31

    iget-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-nez v0, :cond_7

    iget-object v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, v20

    :goto_4
    move v11, v0

    if-ge v11, v12, :cond_7

    iget-object v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    nop

    iget-boolean v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v0, :cond_5

    const-string v0, "   +"

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_5
    iget-boolean v0, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v0, :cond_6

    const-string v0, "   -"

    goto :goto_5

    :cond_6
    const-string v0, "    "

    goto :goto_5

    :goto_6
    iget v3, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    add-long v0, v0, v21

    long-to-int v0, v0

    div-int/lit8 v5, v0, 0xa

    iget v6, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v7, v10, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    move-object v0, v13

    move-object/from16 v1, v26

    move-object/from16 v32, v10

    move/from16 v10, v24

    move/from16 v24, v11

    move/from16 v11, v25

    move/from16 v25, v12

    move/from16 v12, v31

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    add-int/lit8 v0, v24, 0x1

    move/from16 v12, v25

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v23, 0x1

    move-object v12, v14

    move-object/from16 v11, v26

    move-wide/from16 v9, v27

    move/from16 v8, v29

    move/from16 v7, v30

    goto/16 :goto_1

    :cond_8
    move/from16 v30, v7

    move/from16 v29, v8

    move-wide/from16 v27, v9

    move-object/from16 v26, v11

    move-object v14, v12

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    iget v6, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v7, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget v8, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget v10, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v1, v26

    move/from16 v5, v29

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 22

    move-object/from16 v6, p0

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iget-object v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const-string v0, "/proc/stat"

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v8, 0x0

    invoke-static {v0, v1, v8, v7, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    aget-wide v0, v7, v11

    aget-wide v2, v7, v10

    add-long/2addr v0, v2

    aget-wide v2, v7, v9

    const/4 v4, 0x3

    aget-wide v12, v7, v4

    const/4 v5, 0x4

    aget-wide v14, v7, v5

    const/16 v16, 0x5

    aget-wide v4, v7, v16

    const/16 v17, 0x6

    aget-wide v8, v7, v17

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v10, v0, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v10, v2, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    sub-long v10, v14, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v10, v4, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v10, v8, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    iget-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v10, v12, v10

    long-to-int v10, v10

    iput v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    const-string v10, "Load"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v12

    const-string v12, "Total U:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v20, v8

    const/4 v12, 0x0

    aget-wide v8, v7, v12

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " N:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-wide v12, v7, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " S:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-wide v12, v7, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " I:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    aget-wide v8, v7, v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " W:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    aget-wide v8, v7, v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " Q:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v7, v16

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " O:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v7, v17

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Load"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rel U:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " I:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Q:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    iput-wide v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    iput-wide v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    iput-wide v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    move-wide/from16 v8, v20

    iput-wide v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    move-wide/from16 v10, v18

    iput-wide v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    :cond_0
    const-string v1, "/proc"

    const/4 v2, -0x1

    iget-boolean v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    iget-object v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v5, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    :cond_1
    iput v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v6, v2, v1, v3}, Lcom/android/server/enterprise/application/ProcessStats;->onLoadChanged(FFF)V

    :cond_2
    const-string v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    iput-boolean v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    return-void
.end method

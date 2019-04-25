.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v6, v0

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    const-wide/16 v9, 0x0

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v7

    :try_start_1
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v12, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v11

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v7, v8

    move-wide/from16 v24, v9

    :goto_0
    if-ge v7, v12, :cond_3

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_2
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v13, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_2

    monitor-exit v9

    goto :goto_1

    :cond_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long v24, v24, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v9

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    move-wide/from16 v26, v13

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v13

    move-wide/from16 v28, v13

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v13

    move-wide/from16 v30, v13

    const-wide/16 v13, 0x400

    mul-long v32, v9, v13

    mul-long v34, v26, v13

    mul-long v36, v28, v13

    mul-long v38, v30, v13

    mul-long v40, v24, v13

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide v14, v9

    move-wide/from16 v16, v26

    move-wide/from16 v18, v28

    move-wide/from16 v20, v30

    move-wide/from16 v22, v24

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_4
    :goto_2
    const/4 v7, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [J

    move v10, v7

    :goto_3
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_6

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected pss of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processes in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_6
    :try_start_8
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v24, v13

    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v29, v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_7

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v15, :cond_7

    const-wide/16 v15, 0x3e8

    add-long v15, v29, v15

    cmp-long v15, v15, v13

    if-gez v15, :cond_7

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_5

    :cond_7
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v15}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    const/4 v7, 0x0

    nop

    move v15, v8

    :goto_5
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v7, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v31

    invoke-static {v15, v9, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v33

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v35

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-wide/16 v13, 0x0

    cmp-long v13, v33, v13

    if-eqz v13, :cond_8

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v13, :cond_8

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v13, v12, :cond_8

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v13, v15, :cond_8

    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v13, v13, v29

    if-nez v13, :cond_8

    add-int/lit8 v10, v10, 0x1

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    aget-wide v18, v9, v8

    aget-wide v20, v9, v3

    const/4 v14, 0x2

    aget-wide v22, v9, v14

    sub-long v25, v35, v31

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v14, v7

    move/from16 v37, v15

    move v15, v12

    move-wide/from16 v16, v33

    :try_start_a
    invoke-virtual/range {v13 .. v28}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V

    goto :goto_6

    :cond_8
    move/from16 v37, v15

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    :goto_6
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_8

    :catchall_3
    move-exception v0

    move/from16 v37, v15

    :goto_7
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_8
    goto/16 :goto_3

    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

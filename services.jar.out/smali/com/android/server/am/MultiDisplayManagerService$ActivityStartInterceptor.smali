.class public Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityStartInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cancelIntercept(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 3

    invoke-static {p2}, Lcom/android/server/am/MultiDisplayManagerService;->isDefaultOrDexDisplay(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_3

    const-string v0, "MultiDisplayManager"

    const-string v2, "Overlay activity can be launched on any display."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method intercept(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IIILandroid/app/ActivityOptions;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p6

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intercept "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reusedTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v11, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->cancelIntercept(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1
    const v0, 0x10008000

    and-int v3, p5, v0

    const/4 v12, 0x1

    if-ne v3, v0, :cond_2

    move v0, v12

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v8, :cond_3

    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$1000(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v8, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MultiDisplayManager"

    const-string v4, "Activity in lockTaskMode can\'t be move to other display."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_3
    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    move-object v13, v3

    if-eqz v13, :cond_5

    move-object v3, v13

    goto :goto_2

    :cond_5
    move-object v3, v9

    :goto_2
    move-object v14, v3

    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object v7, v3

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v3

    move v6, v3

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v7, v6, v12}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    move-object v5, v3

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v3

    if-ne v3, v10, :cond_6

    iget-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-nez v3, :cond_6

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_5

    :cond_6
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v3, v5, v8, v6, v10}, Lcom/android/server/am/MultiDisplayManagerService;->access$1100(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App has visible tasks.(start) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string v2, "MultiDisplayManager"

    const-string v3, "App has visible tasks.(start)"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v15, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x0

    move-object v2, v15

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, p4

    move/from16 v19, v6

    move-object/from16 v6, v16

    move-object/from16 v20, v7

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    move-object v7, v15

    iput-boolean v12, v7, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->skipSendingError:Z

    iget-object v5, v14, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v2, v7

    move-object/from16 v3, v20

    move/from16 v4, v19

    move-object v6, v8

    move-object v15, v7

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/DisplayChooserInfo;->createPendingActivityLaunchType(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v3, v2, v10}, Lcom/android/server/am/MultiDisplayManagerService;->showDisplayChooserLocked(Lcom/android/server/am/DisplayChooserInfo;I)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v12

    :cond_8
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v3, v18

    :try_start_3
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v4, v3, v10}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    move/from16 v6, v19

    move-object/from16 v5, v20

    invoke-static {v4, v5, v6, v10}, Lcom/android/server/am/MultiDisplayManagerService;->access$1200(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;II)V

    goto :goto_4

    :cond_9
    move/from16 v6, v19

    move-object/from16 v5, v20

    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_a
    move-object v3, v5

    move-object v5, v7

    :goto_5
    :try_start_4
    const-string v4, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "do not need process kill, "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method interceptStartFromRecent(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Z
    .locals 10

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptStartFromRecent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_2
    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->cancelIntercept(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_3
    :try_start_2
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v6, v6, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v8

    if-ne v8, v0, :cond_4

    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v8, v6, p1, v5, v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$1100(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiDisplayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App has visible tasks.(startFromRecent) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v3, "MultiDisplayManager"

    const-string v8, "App has visible tasks.(startFromRecent)"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v8

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v8, v9, p1, p2}, Lcom/android/server/am/DisplayChooserInfo;->createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v8, v3, v0}, Lcom/android/server/am/MultiDisplayManagerService;->showDisplayChooserLocked(Lcom/android/server/am/DisplayChooserInfo;I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_6
    :try_start_3
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v7, v4, v5, v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$1200(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;II)V

    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_8
    :goto_2
    :try_start_4
    const-string v7, "MultiDisplayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "do not need process kill, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

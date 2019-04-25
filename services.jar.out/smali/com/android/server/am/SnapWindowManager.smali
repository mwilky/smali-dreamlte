.class public Lcom/android/server/am/SnapWindowManager;
.super Ljava/lang/Object;
.source "SnapWindowManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SnapWindowManager"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mHandleNonResizeableTask:Z

.field private final mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

.field private mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

.field private mSnapWindowResizing:Z

.field mSnapWindowRunning:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mHandleNonResizeableTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    iput-object p1, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/SnapWindowManager;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method

.method private swapTasksForSnapWindowLocked()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v9, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v10, v3

    iget-object v3, p0, Lcom/android/server/am/SnapWindowManager;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService;->swapTasksInSplitScreenMode()V

    iget-object v3, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/SnapWindowInternal;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v11

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

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
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_2

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/SnapWindowInternal;->getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v5

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

.method getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method handleNonResizeableTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/SnapWindowManager;->mHandleNonResizeableTask:Z

    return-void
.end method

.method isSnapWindowRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

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

.method performDisplayOverrideConfigUpdate(II)V
    .locals 4

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/SnapWindowManager;->isSnapWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "config-orientation"

    const-string/jumbo v3, "finish"

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    const-string v0, "config-density"

    const-string/jumbo v3, "finish"

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p2, v0

    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskWindowContainerController;->scrollTask(Landroid/graphics/Rect;)V

    return-void
.end method

.method setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    iget v10, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gtz v11, :cond_0

    return-void

    :cond_0
    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v13

    if-ne v2, v5, :cond_6

    invoke-virtual {v13, v8, v8}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget-object v14, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iget-object v15, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/SnapWindowInternal;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    return-void

    :cond_4
    iget v15, v14, Landroid/graphics/Rect;->top:I

    iget v8, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v24, v4

    new-instance v4, Landroid/graphics/Rect;

    sub-int v9, v7, v15

    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-direct {v4, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v22, v4

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v12, v9}, Lcom/android/server/wm/SnapWindowInternal;->setIgnoreMinimizeDocked(Z)V

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v12, v4, v9}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapTargetFullscreen(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v12, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v9

    move/from16 v18, v12

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/android/server/wm/SnapWindowInternal;->setIgnoreMinimizeDocked(Z)V

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v12, v4, v9}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput v8, v9, Landroid/graphics/Rect;->right:I

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v12

    move-object/from16 v27, v9

    invoke-virtual/range {v26 .. v31}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    move-object/from16 v32, v4

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v12, v4, v10}, Lcom/android/server/wm/SnapWindowInternal;->adjOffsetForSnapWindowTarget(Landroid/os/IBinder;I)I

    move-result v10

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    neg-int v12, v10

    iput v12, v4, Landroid/graphics/Rect;->top:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v12, v7, v15

    sub-int/2addr v12, v10

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    sget-boolean v12, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "SnapWindowManager"

    move-object/from16 v33, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v6

    const-string/jumbo v6, "snap target full screen tid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " region : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object/from16 v33, v4

    move-object/from16 v34, v6

    :goto_0
    move-object v12, v5

    goto/16 :goto_3

    :cond_6
    move-object/from16 v25, v12

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    if-ne v2, v6, :cond_7

    goto :goto_1

    :cond_7
    move-object/from16 v12, v25

    goto/16 :goto_3

    :cond_8
    :goto_1
    if-ne v2, v6, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SnapWindowManager;->swapTasksForSnapWindowLocked()V

    :cond_9
    invoke-virtual {v13}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_a

    return-void

    :cond_a
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_b

    return-void

    :cond_b
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    iget-object v8, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    iput-boolean v12, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    neg-int v12, v10

    iput v12, v9, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v9}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    invoke-virtual {v13, v4, v12}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v12, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v14, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_c
    sget-boolean v12, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v12, :cond_e

    const-string v12, "SnapWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "snap target "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    if-ne v2, v15, :cond_d

    const-string v15, "A "

    goto :goto_2

    :cond_d
    const-string v15, "B "

    :goto_2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " tid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " region : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object v12, v6

    :goto_3
    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/MultiWindowManagerService;->notifySnapWindowVisibilityChangeLocked(ZLjava/lang/String;)V

    if-eqz v12, :cond_f

    iget-object v4, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    iget-object v4, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    nop

    :cond_f
    goto/16 :goto_11

    :cond_10
    iget-boolean v7, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    if-nez v7, :cond_11

    return-void

    :cond_11
    const-string/jumbo v7, "remove task"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "swap tasks"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v9, "resize docked size null"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "config-orientation"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "config-density"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "snap task to back"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v2, v13, :cond_12

    const/4 v13, 0x1

    goto :goto_4

    :cond_12
    const/4 v13, 0x0

    :goto_4
    if-ne v2, v6, :cond_13

    const/4 v14, 0x1

    goto :goto_5

    :cond_13
    const/4 v14, 0x0

    :goto_5
    if-ne v2, v5, :cond_14

    const/4 v5, 0x1

    goto :goto_6

    :cond_14
    const/4 v5, 0x0

    :goto_6
    if-ne v2, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    const/4 v4, 0x0

    :goto_7
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    iget-object v15, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-nez v6, :cond_16

    return-void

    :cond_16
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v2, :cond_1a

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_8
    move/from16 v35, v18

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v36, v1

    const/16 v16, 0x1

    add-int/lit8 v1, v18, -0x1

    move/from16 v37, v14

    move/from16 v14, v35

    if-ge v14, v1, :cond_19

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-eqz v1, :cond_18

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    const/16 v17, 0x0

    goto :goto_9

    :cond_18
    add-int/lit8 v18, v14, 0x1

    move-object/from16 v1, v36

    move/from16 v14, v37

    goto :goto_8

    :cond_19
    move-object/from16 v1, v36

    :goto_9
    if-eqz v17, :cond_1b

    return-void

    :cond_1a
    move-object/from16 v36, v1

    move/from16 v37, v14

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/SnapWindowInternal;->saveSnapShotAdjustedBounds(Landroid/os/IBinder;)V

    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-boolean v14, v1, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-nez v14, :cond_1e

    if-eqz v8, :cond_1d

    goto :goto_a

    :cond_1d
    move/from16 v38, v5

    goto :goto_b

    :cond_1e
    :goto_a
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v14

    iget-object v14, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    move/from16 v38, v5

    const/4 v5, 0x2

    invoke-virtual {v14, v2, v5}, Lcom/android/server/wm/SnapWindowInternal;->getMiddleTargetDockedBounds(Landroid/graphics/Rect;I)V

    :goto_b
    if-nez v10, :cond_21

    if-eqz v11, :cond_1f

    goto :goto_c

    :cond_1f
    if-eqz v9, :cond_20

    goto :goto_d

    :cond_20
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_21
    :goto_c
    iget-object v5, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/SnapWindowInternal;->adjStackBoundsForSnapWindow()V

    :goto_d
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    iget-boolean v14, v1, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-eqz v14, :cond_22

    if-eqz v7, :cond_22

    iget-object v14, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    move/from16 v39, v9

    const/4 v9, 0x1

    invoke-virtual {v14, v5, v9}, Lcom/android/server/wm/SnapWindowInternal;->setSnapWindowDeferAnimation(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    goto :goto_e

    :cond_22
    move/from16 v39, v9

    :goto_e
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    iget-object v14, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v14, v5, v9}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    iget-object v14, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v14, v5, v9}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapTargetFullscreen(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    if-nez v8, :cond_23

    if-nez v12, :cond_23

    if-nez v4, :cond_23

    if-eqz v7, :cond_24

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v14, 0x1

    if-le v9, v14, :cond_24

    :cond_23
    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v9

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_24
    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v3}, Lcom/android/server/am/MultiWindowManagerService;->notifySnapWindowVisibilityChangeLocked(ZLjava/lang/String;)V

    sget-boolean v9, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v9, :cond_25

    const-string v9, "SnapWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "un-snapped tid : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x0

    if-eqz v13, :cond_26

    const-string v0, "DividerDragging"

    goto :goto_10

    :cond_26
    if-nez v10, :cond_28

    if-eqz v11, :cond_27

    goto :goto_f

    :cond_27
    if-eqz v4, :cond_29

    const-string v0, "DividerFinishButton"

    goto :goto_10

    :cond_28
    :goto_f
    const-string v0, "OrientationChanged"

    :cond_29
    :goto_10
    nop

    :goto_11
    return-void
.end method

.method setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    return-void
.end method

.method showSnapWindowGuideView(I)V
    .locals 3

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showSnapWindowGuideView(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

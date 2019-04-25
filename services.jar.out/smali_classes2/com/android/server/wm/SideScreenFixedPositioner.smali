.class Lcom/android/server/wm/SideScreenFixedPositioner;
.super Lcom/android/server/wm/SideScreenPositioner;
.source "SideScreenFixedPositioner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SideScreenFixedPositioner"


# instance fields
.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mLastSideTargetBounds:Landroid/graphics/Rect;

.field private final mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenFixedPositioner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedPositioner;->dockSideScreen()V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenFixedPositioner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedPositioner;->hideSideScreen()V

    return-void
.end method

.method private synthetic lambda$onDragEnded$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setForceScaleFullscreenWindows(Z)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method onActionMove()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mIsRightDockSide:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenFixedPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method onDragEnded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mIsRightDockSide:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mOpening:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissEnd()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$QOgCSR_1dWMOV5vtzZjEYAJxRq0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$QOgCSR_1dWMOV5vtzZjEYAJxRq0;-><init>(Lcom/android/server/wm/SideScreenFixedPositioner;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenFixedPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$a1h50SPMhrgq-VsrCZDa2Txc7wQ;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedPositioner$a1h50SPMhrgq-VsrCZDa2Txc7wQ;-><init>(Lcom/android/server/wm/SideScreenFixedPositioner;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenFixedPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenFixedPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/SideScreenPositioner;->startDrag(Lcom/android/server/wm/WindowState;FF)V

    return-void
.end method

.class Lcom/android/server/wm/SideScreenSlideOverStackPositioner;
.super Lcom/android/server/wm/SideScreenStackPositioner;
.source "SideScreenSlideOverStackPositioner.java"


# instance fields
.field private final mSideScreenDragBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->switchDockSide(Z)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V

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

.method public static synthetic lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->setSideScreenMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->setSideScreenMode(I)V

    :goto_0
    return-void
.end method

.method private overDockingThreshold(Landroid/graphics/Rect;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mIsRightDockSide:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private overSwitchDockSideThreshold(Landroid/graphics/Rect;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getOppositeSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iget v0, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method


# virtual methods
.method onActionMove()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDragEnded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->overSwitchDockSideThreshold(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$zNqFYRJybUisCvAZnume2cp7niw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$zNqFYRJybUisCvAZnume2cp7niw;-><init>(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->overDockingThreshold(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$5-OKO0NvYaWfBxsgPMZMnn4jHHs;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$5-OKO0NvYaWfBxsgPMZMnn4jHHs;-><init>(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method updateDragBounds(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

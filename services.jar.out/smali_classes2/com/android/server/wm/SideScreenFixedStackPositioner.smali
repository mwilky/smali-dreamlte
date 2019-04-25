.class Lcom/android/server/wm/SideScreenFixedStackPositioner;
.super Lcom/android/server/wm/SideScreenStackPositioner;
.source "SideScreenFixedStackPositioner.java"


# static fields
.field private static final DISMISS_THRESHOLD_DIP:I = 0x1e

.field private static final DOCKING_THRESHOLD_DIP:I = 0x4b

.field private static final DRAG_MODE_DISMISS:I = 0x3

.field private static final DRAG_MODE_DOCKING:I = 0x4


# instance fields
.field private mDismissThreshold:I

.field private mDockingThreshold:I

.field private final mFlag:I

.field private final mLastSideTargetBounds:Landroid/graphics/Rect;

.field private final mSideScreenDragBounds:Landroid/graphics/Rect;

.field private final mTaskDragBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mFlag:I

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->moveTaskToBack(IZ)V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V
    .locals 1

    nop

    sget-boolean v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->setSideScreenMode(I)V

    return-void
.end method


# virtual methods
.method moveTaskToBack(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToBack(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onActionMove()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onDragEnded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDismissThreshold:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissEnd()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;-><init>(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :goto_2
    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    :goto_3
    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    if-lt v0, v2, :cond_5

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$DAHigetLGkgg4MCoN_b2PrFVsd8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$DAHigetLGkgg4MCoN_b2PrFVsd8;-><init>(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V

    goto :goto_4

    :cond_5
    nop

    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_6
    :goto_5
    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDismissThreshold:I

    return-void
.end method

.method updateDragBounds(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateDragMode(FF)I
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/SideScreenStackPositioner;->updateDragMode(FF)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mFlag:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-nez v3, :cond_2

    :cond_1
    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    return v2
.end method

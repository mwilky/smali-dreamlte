.class public Lcom/android/server/wm/SideScreenManagerInternal;
.super Ljava/lang/Object;
.source "SideScreenManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;
    }
.end annotation


# static fields
.field private static final SHADOW_THICKNESS:F = 24.0f

.field private static final TAG:Ljava/lang/String; = "SideScreenManagerInternal"


# instance fields
.field final mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

.field mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mDividerHalfSize:I

.field private mDividerInset:I

.field mDockSide:I
    .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenDockSide;
    .end annotation
.end field

.field private mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mDraggingTask:Lcom/android/server/wm/Task;

.field private mForceScaleFullscreenWindows:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mImeHeight:I

.field private mIsDimensionLoaded:Z

.field private mIsImeShowing:Z

.field private mIsSnapAlgorithmInitialized:Z

.field private mLastConfig:Landroid/content/res/Configuration;

.field private mMenuContentInset:I

.field private mMinimizedDock:Z

.field private mMinimizedRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mOutlineThickness:I

.field private final mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

.field private mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mScaleAnimSourceRect:Landroid/graphics/Rect;

.field private final mScaledWindowingMode:Landroid/util/SparseBooleanArray;

.field private mScreenDivider:Lcom/android/server/wm/WindowState;

.field private mScreenHeight:I

.field private mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

.field private mScreenWidth:I

.field private final mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

.field private mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShadowThickness:I

.field private final mSideScreenBounds:Landroid/graphics/Rect;

.field private mSideScreenDocked:Z

.field final mSideScreenInnerRect:Landroid/graphics/Rect;

.field private mSideScreenMode:I

.field final mSideScreenOuterRect:Landroid/graphics/Rect;

.field private mSideScreenVisible:Z

.field private mStackDivider:Lcom/android/server/wm/WindowState;

.field private mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

.field private final mTargetStackBoundsOfMenu:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskTouchRegion:Landroid/graphics/Region;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStackBounds:Landroid/graphics/Rect;

.field private mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mWindowingModeAdjustedForIme:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    new-instance v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mLastConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTaskTouchRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    new-instance v1, Lcom/android/server/wm/SideScreenBoundsAnimationController;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    return-void
.end method

.method private checkAndInitialSnapAlgorithm()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm()V

    :cond_1
    return-void
.end method

.method private getDividerInset(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v0, "SideScreenManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDividerInset() what is mode? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerInset:I

    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerHalfSize:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0
.end method

.method private getTargetStackBoundsOfMenu(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private isFullscreenResizable()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    const-string v3, "SideScreenManagerInternal"

    const-string v4, "isFullscreenResizable(). task is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public static synthetic lambda$animateScaleStack$2(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v6, v2

    :goto_0
    const/4 v5, -0x1

    move-object v2, p1

    move-object v4, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->animateBounds(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$finishScreenPositioning$0(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenPositioner;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
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

.method public static synthetic lambda$finishStackPositioning$1(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenStackPositioner;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    :cond_0
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

.method public static synthetic lambda$notifyDockedStackMinimizedChanged$5(Lcom/android/server/wm/SideScreenManagerInternal;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenMinimizedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$scheduleHideSideScreen$3(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->hideSideScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setAdjustedForIme$6(Lcom/android/server/wm/SideScreenManagerInternal;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$setMinimizedDockedStack$4(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private loadDimension()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050359

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerInset:I

    const v1, 0x105035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerHalfSize:I

    const v1, 0x105035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    return-void
.end method

.method private notifyDockedStackMinimizedChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetCurrentBoundsAndSnapTarget()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenDocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    :goto_1
    nop

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resetDockSide()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setDockSide(IZ)V

    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isHomeStackResizable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm(ZZ)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v4, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    return-void
.end method

.method private setSnapAlgorithm()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm(ZZ)V

    return-void
.end method

.method private setSnapAlgorithm(ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v10, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v11, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move v3, v10

    move v4, v8

    move v5, v9

    move-object v6, v11

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-static {v2, v8, v9, v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x2

    invoke-static {v2, v8, v9, v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    move v3, v8

    move v4, v9

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_1
    return-void
.end method

.method private setTargetStackBoundsOfMenu(ILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private updateCurrentBoundsAndSnapTarget()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenDocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    nop

    :goto_2
    nop

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method addingDecorRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method adjustForceScaleFullScreenWindow(Lcom/android/server/wm/WindowStateAnimator;Z)Z
    .locals 11

    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getForceScaleFullscreenWindows()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    iput v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    iput v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    iget v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    iget v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->requestIgnoreParentCrop(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->requestIgnoreParentCrop(Z)V

    :goto_2
    iget-object v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v2, v8, v9, p2}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    return v3

    :cond_6
    :goto_3
    return v2
.end method

.method adjustForceScaleFullScreenWindowDimmer(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Z
    .locals 10

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/TaskStack;

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v7

    const/4 v9, 0x1

    if-nez v8, :cond_8

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setIgnoreParentCrop(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p2, p3, v9}, Landroid/view/SurfaceControl$Transaction;->setIgnoreParentCrop(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :goto_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {p2, p3, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v7, p4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {p2, p3, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return v9
.end method

.method adjustScaleAndPositionIfNeeded(Lcom/android/server/wm/WindowStateAnimator;FFLandroid/graphics/Rect;Z)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSideScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v1, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isMenuWindow(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v7, v5

    sub-float v1, p2, v7

    int-to-float v7, v6

    sub-float v2, p3, v7

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/SideScreenManagerInternal;->getTargetStackBoundsOfMenu(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    iput v6, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    iput v6, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    iget v7, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v4, v6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    iget v7, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v7, v8, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    int-to-float v6, v4

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v9, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v9, v8, v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v4, v6

    int-to-float v6, v5

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v9, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    iget-object v6, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6, v7, v8, p5}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    :cond_2
    return v3
.end method

.method animateScaleStack(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isActivityTypeStandard()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public calculateOppositeStackBounds(ILandroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :goto_0
    goto :goto_1

    :cond_3
    new-array v1, v2, [Landroid/graphics/Rect;

    aput-object p2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->excludeSideScreenBounds(I[Landroid/graphics/Rect;)V

    :goto_1
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

.method public checkMinimizeChanged(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-nez v3, :cond_4

    return-void

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v7

    if-ltz v7, :cond_6

    goto :goto_2

    :cond_6
    move v3, v6

    :goto_2
    move v5, v3

    :cond_7
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setMinimizedDockedStack(ZZ)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method public varargs excludeSideScreenBounds(I[Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, v1, v2, v3, p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->excludeSideScreenBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;I[Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method findTaskForTaskSwitchPoint(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/TaskStack;)Lcom/android/server/wm/Task;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v4, p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method finishScreenPositioning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$T6D8gmesxcD4tonFUpClwxsMAp4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$T6D8gmesxcD4tonFUpClwxsMAp4;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method finishStackPositioning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$NK7aVep-Zn10U8v1XMMcrqAK1Dk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$NK7aVep-Zn10U8v1XMMcrqAK1Dk;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getCurrentSideScreenBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

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

.method public getCurrentSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDockSide()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getForceScaleFullscreenWindows()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mForceScaleFullscreenWindows:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getMenuWindow(I)Lcom/android/server/wm/WindowState;
    .locals 1

    const/16 v0, 0xa33

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_0
    const/16 v0, 0xa34

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getMenuWindowByWindowingMode(I)Lcom/android/server/wm/WindowState;
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getOppositeSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->checkAndInitialSnapAlgorithm()V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public varargs getOtherSideBounds(I[Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getOtherSideBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPrimaryMenuWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getScreenDivider()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenDivider:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getScreenPositionerDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getSecondaryMenuWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getSideScreenBounds(Z)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz p2, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    const/4 v4, 0x0

    invoke-static {p1, v2, p2, v4, v3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    if-eqz p3, :cond_1

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenStackBounds(I)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, p2, v2, p3, v3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenStackBounds(IZ)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {p0, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v3

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, v2, p3, v3, v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->checkAndInitialSnapAlgorithm()V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method getStackDivider()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackDivider:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getStackPositionerDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    const/16 v0, 0xa33

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_1
    const/16 v0, 0xa34

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_2
    return-void
.end method

.method public getWindowingModeScaled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasPrimaryMenuWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSecondaryMenuWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideSideScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetDockSide()V

    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setMinimizedDockedStack(ZZ)V

    :cond_0
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

.method public isAnimatingBoundsToFullscreen(Lcom/android/server/wm/StackWindowController;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isDragingSideScreenLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHomeStackResizable()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method

.method isMovingTopTaskLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSideScreenDocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSideScreenDockedMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSideScreenVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method needAssignImeAboveSideScreen(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->hasSideScreenStack(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method notifyLidStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/4 v1, 0x0

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifySideScreenDockSideChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifySideScreenTaskSwitched(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v2, v1, 0x1480

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm()V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1
    nop

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    if-ne v7, v5, :cond_3

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    if-eq v7, v6, :cond_8

    :cond_3
    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_4

    move v7, v8

    goto :goto_2

    :cond_4
    int-to-float v7, v5

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    :goto_2
    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    int-to-float v8, v6

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    :goto_3
    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    if-ne v9, v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    :goto_5
    iput v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    iput v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    :cond_8
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_a

    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->switchDockSide(Z)V

    goto :goto_6

    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetDockSide()V

    :cond_a
    :goto_6
    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    if-eq v3, v2, :cond_c

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->top:I

    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->updateCurrentBoundsAndSnapTarget()V

    :cond_d
    return-void
.end method

.method positionScreenDivider(IILandroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getDividerInset(I)I

    move-result v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method positionSideScreenMenu(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    nop

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->addingDecorRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setTargetStackBoundsOfMenu(ILandroid/graphics/Rect;)V

    return-void
.end method

.method positionStackDivider(Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v1

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    :goto_1
    const/16 v4, 0x64

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->inSideScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    const/16 v5, 0x65

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    :goto_3
    goto :goto_4

    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    goto :goto_3

    :goto_4
    nop

    if-nez v5, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    :cond_5
    sget v6, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_DIVIDER_INSET:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v4, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v6

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    return-void
.end method

.method postTranslateAfterRotation(Landroid/graphics/Rect;II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public putSideScreenMenuTouchableRegionLocked(Landroid/graphics/Rect;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    const/16 v0, 0x65

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method reevaluateMenuVisibility(IZ)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method scheduleHideSideScreen()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setAdjustedForIme(IZI)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    move v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    move p3, v2

    iget-boolean v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsImeShowing:Z

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-ne p3, v2, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsImeShowing:Z

    iput p3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    move v0, p1

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    iput v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    move v0, v4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$ux3HtSM3iDEezouTcHLSyr5IIo8;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$ux3HtSM3iDEezouTcHLSyr5IIo8;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-void
.end method

.method setDockSide(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetCurrentBoundsAndSnapTarget()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->notifySideScreenDockSideChanged(I)V

    :cond_1
    return-void
.end method

.method public setForceScaleFullscreenWindows(Z)V
    .locals 0

    return-void
.end method

.method setMenuWindow(ILcom/android/server/wm/WindowState;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa33

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0xa34

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setScaledWindowingMode(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

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

.method setScreenDivider(Lcom/android/server/wm/WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenDivider:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setSideScreenBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

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

.method public setSideScreenDocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

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

.method public setSideScreenMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->checkMinimizeChanged(Z)V

    :cond_0
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

.method public setSnapTarget()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(Landroid/graphics/Rect;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

    :goto_0
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

.method setStackDivider(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackDivider:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showSideScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    :cond_0
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

.method public sideScreenStackResizeDisallowed(Lcom/android/server/wm/StackWindowController;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingSideScreen(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getMultiWindowAnimationController()Lcom/android/server/wm/MultiWindowAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowFreezeAnimationLocked(I)Lcom/android/server/wm/MultiWindowFreezeAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-static {v2, v3}, Lcom/android/server/wm/SideScreenPositioner;->create(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/SideScreenPositioner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-nez v2, :cond_1

    const-string v2, "SideScreenManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startMovingSideScreen, invalid mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SideScreenPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v5, v5, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SideScreenManagerInternal"

    const-string/jumbo v4, "startMovingSideScreen: Unable to transfer touch focus"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenPositioner;->unregister()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/SideScreenPositioner;->startDrag(Lcom/android/server/wm/WindowState;FF)V

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenPositioner;->postStartMovingSideScreen()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    :try_start_3
    const-string v1, "SideScreenManagerInternal"

    const-string/jumbo v2, "startMovingSideScreen, display frozen."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingTopTask(IIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    move-object v3, v1

    goto :goto_2

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getStackDivider()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getMenuWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    nop

    move-object v3, v5

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :goto_2
    nop

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inSideScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-static {v4, v5, p4}, Lcom/android/server/wm/SideScreenStackPositioner;->create(Lcom/android/server/wm/WindowManagerService;II)Lcom/android/server/wm/SideScreenStackPositioner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-nez v4, :cond_3

    const-string v1, "SideScreenManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStackPositioningLocked: not support mode #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SideScreenStackPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v7, v7, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SideScreenManagerInternal"

    const-string/jumbo v6, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->unregister()V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    int-to-float v8, p1

    int-to-float v9, p2

    move-object v5, v2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/SideScreenStackPositioner;->startDrag(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;FF)V

    iput-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    monitor-exit v0

    return-void

    :cond_5
    :goto_3
    const-string v1, "SideScreenManagerInternal"

    const-string/jumbo v4, "startStackPositioningLocked: Unable to start moving"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xa33
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method subtractDecorRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method switchDockSide(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setDockSide(IZ)V

    return-void
.end method

.method updateSideScreenMenu()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->reevaluateMenuVisibility(IZ)V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->reevaluateMenuVisibility(IZ)V

    return-void
.end method

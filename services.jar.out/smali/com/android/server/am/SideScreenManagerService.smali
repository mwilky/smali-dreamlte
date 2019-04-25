.class public Lcom/android/server/am/SideScreenManagerService;
.super Ljava/lang/Object;
.source "SideScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SideScreenManagerService$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SideScreenManagerService"


# instance fields
.field private mAllowOtherStacksResize:Z

.field private mAnimDuration:I

.field private final mAnimatingRect:Landroid/graphics/Rect;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFrom:Landroid/graphics/Rect;

.field private final mH:Lcom/android/server/am/SideScreenManagerService$H;

.field private mHasSecondaryStacks:Z

.field private mMaximizing:Z

.field private mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

.field private mPostResizeForScale:Ljava/lang/Runnable;

.field private mResizingForAdjustIme:Z

.field private mResizingForScale:Z

.field private final mScaledWindowingMode:Landroid/util/SparseBooleanArray;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

.field private mSideScreenDocked:Z

.field private mSideScreenMode:I

.field private mSideScreenVisible:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpBounds2:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field private final mTranslucentStackIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTranslucentStackIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/SideScreenManagerService$H;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SideScreenManagerService$H;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v0, Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v1, Lcom/samsung/android/server/corestate/SideScreenCoreStateVolatileObserver;

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/corestate/SideScreenCoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    const-class v2, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/server/am/CoreStateController;->createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/CoreStateController;->registerObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private dismissSideScreenSplitLocked(Lcom/android/server/am/ActivityDisplay;ZZ)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/16 v9, 0x65

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_0
    move v12, v2

    if-ltz v12, :cond_4

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v13, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v9, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_1
    move v14, v2

    if-ltz v14, :cond_1

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v7, v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    const/4 v15, 0x0

    move-object v2, v8

    move-object v4, v0

    move-object v5, v7

    move-object/from16 v23, v7

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string/jumbo v22, "dismissSideScreenSplit - NOT_onTop"

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    add-int/lit8 v2, v14, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v12, -0x1

    goto :goto_0

    :cond_2
    move v2, v10

    :goto_2
    move v12, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    if-ge v12, v2, :cond_4

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v13, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v9, :cond_3

    move v2, v10

    :goto_3
    move v14, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v2

    if-ge v14, v2, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v7, v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    const/4 v15, 0x1

    move-object v2, v8

    move-object v4, v0

    move-object v5, v7

    move-object/from16 v23, v7

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string/jumbo v22, "dismissSideScreenSplit - onTop"

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v12, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    if-nez p3, :cond_5

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private enterDockedMode()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_1

    const/16 v2, 0x64

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->dismissSideScreen(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStackAndOtherStacksLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getNextStackInWindowingMode(Lcom/android/server/am/ActivityDisplay;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v4, v5, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getSideScreenBounds(Z)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getSideScreenStacksMovementAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->cancelFlingAnimation()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/am/SideScreenManagerService$2;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/android/server/am/SideScreenManagerService$2;-><init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSideScreenStacksMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->cancelFlingAnimation()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/am/SideScreenManagerService$1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/SideScreenManagerService$1;-><init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$dismissSideScreen$4(Lcom/android/server/am/SideScreenManagerService;I)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(IZ)Z

    :cond_0
    const/16 v3, 0x64

    if-ne p1, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->moveSecondaryStacksToSideScreenPrimaryLocked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(IZ)Z

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->hideSideScreen(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic lambda$getSideScreenStacksMovementAnimator$6(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$getSideScreenStacksMovementAnimator$8(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStacksLocked(ILandroid/graphics/Rect;Z)Z

    return-void
.end method

.method public static synthetic lambda$hideSideScreen$2(Lcom/android/server/am/SideScreenManagerService;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->hideSideScreen()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(I)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "hideSideScreen"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$hideSideScreen$3(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$notifySideScreenImeVisibilityChanged$14(Lcom/android/server/am/SideScreenManagerService;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$notifySideScreenImeVisibilityChanged$15(Lcom/android/server/am/SideScreenManagerService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const-string v1, "SideScreenManagerService"

    const-string/jumbo v2, "notifySideScreenImeVisibilityChanged, mPostImeAdjustVisibilityChanged.run()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$onSideScreenSplitModeDeactivatedLocked$5(Lcom/android/server/am/SideScreenManagerService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenLocked$7(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLockedInSurfaceTransaction(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackAndOtherStacksLocked$11(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 13

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapTarget()V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iget v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->getBaseDisplayBounds(ILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, v12

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackWithScale$12(Lcom/android/server/am/SideScreenManagerService;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStackWithScale(IZ)Z

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackWithScale$13(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, p2, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p4, v3, v3}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SideScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeSideScreenStackWithScale : stackId #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$showSideScreen$0(Lcom/android/server/am/SideScreenManagerService;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(I)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$showSideScreen$1(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$swapTaskWindowingModeFromSubWindowHandler$10(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v8, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;-><init>(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$swapTaskWindowingModeFromSubWindowHandler$9(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->dismissSideScreenSplitLocked(Lcom/android/server/am/ActivityDisplay;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingMode(II)V

    return-void
.end method

.method private moveSecondaryStacksToSideScreenPrimaryLocked(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    const/16 v4, 0x64

    const/16 v5, 0x65

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "moveSecondaryStacksToSideScreenPrimaryLocked"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void
.end method

.method private moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resizeSideScreenLockedInSurfaceTransaction(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SideScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeSideScreenLocked : stackId #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private setSideScreenBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private startActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v2, p1, v3, v4, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    if-eqz p2, :cond_2

    new-instance v4, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v4, p2}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    nop

    :cond_3
    if-eqz v0, :cond_4

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    :cond_4
    return-void
.end method


# virtual methods
.method adjustScaleDownTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getScaledWindowingModeLocked(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method animateMoveSideScreenStacks(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dismissSideScreen(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$B_4ofT2d-cergeNlJ5JVJ4SXEbk;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$B_4ofT2d-cergeNlJ5JVJ4SXEbk;-><init>(Lcom/android/server/am/SideScreenManagerService;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dockSideScreen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableSlideOverDefault(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    const-string/jumbo v4, "slideover_default"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getBaseDisplayBounds(ILandroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method getBottomInsertPosition(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method getDockSideLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getDockSide()I

    move-result v0

    return v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Lcom/android/server/am/ActivityStack;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_2

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    if-eq v4, v5, :cond_4

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v4

    :goto_1
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    if-eqz v1, :cond_8

    move v5, v1

    goto/16 :goto_a

    :cond_8
    and-int/lit16 v6, p4, 0x1000

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    :goto_3
    iget-object v7, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_a

    return-object v2

    :cond_a
    if-eqz p2, :cond_b

    if-eq p2, v6, :cond_b

    move-object v6, p2

    :cond_b
    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/16 v2, 0x64

    goto :goto_4

    :pswitch_1
    const/16 v2, 0x65

    nop

    :goto_4
    move v5, v2

    :goto_5
    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v2, v3, :cond_e

    const/16 v7, 0x64

    if-eq v2, v7, :cond_d

    goto :goto_6

    :cond_d
    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/16 v5, 0x64

    nop

    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    :goto_7
    iget-object v7, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, p1, p3, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v7

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_8

    :cond_11
    goto :goto_9

    :cond_12
    :goto_8
    move v0, v3

    :goto_9
    invoke-virtual {v2, v5, v7, v0}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    :cond_13
    :goto_a
    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_14

    if-ne v4, v5, :cond_15

    :cond_14
    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {v5}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    :goto_b
    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, p1, p3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v6

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_c

    :cond_17
    goto :goto_d

    :cond_18
    :goto_c
    move v0, v3

    :goto_d
    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    :cond_19
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getScaledWindowingModeLocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method getSideScreenModeLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    return v0
.end method

.method getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenStackBounds(IZ)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenVisibilityLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    return v0
.end method

.method hideSideScreen(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$ugNff5qdr45s8gzf4sJDkuQcMxI;

    invoke-direct {v5, p0, v3, v2, v1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$ugNff5qdr45s8gzf4sJDkuQcMxI;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/SideScreenManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isMaximizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    return v0
.end method

.method isNextFocusable(Lcom/android/server/am/ActivityStack;I)Z
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->isSideScreenVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq p2, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method isSideScreenDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    return v0
.end method

.method isSideScreenDockedMode()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSideScreenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    return v0
.end method

.method public makeMultiLaunchActivityOptions([Landroid/content/Intent;Lcom/android/server/am/SafeActivityOptions;)[Lcom/android/server/am/SafeActivityOptions;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getMultiLaunchSideScreenModes()[I

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    array-length v2, p1

    array-length v3, v1

    if-ne v2, v3, :cond_1

    array-length v2, v1

    new-array v0, v2, [Lcom/android/server/am/SafeActivityOptions;

    add-int/lit8 v3, v2, -0x1

    aput-object p2, v0, v3

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, v3}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    :goto_0
    if-ltz v3, :cond_2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    new-instance v5, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v5, v4}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "intents are length different than multiLaunchWindowingMode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v0
.end method

.method notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    .locals 5

    const-string v0, "SideScreenManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySideScreenImeVisibilityChanged, windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;-><init>(Lcom/android/server/am/SideScreenManagerService;I)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    const-string v0, "SideScreenManagerService"

    const-string v1, "Scale animation is running. Abort to resize stacks for adjusting ime."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HeUUmj_slsRf4mbpxjTwXP8sedU;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HeUUmj_slsRf4mbpxjTwXP8sedU;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method onSideScreenSplitModeActivatedLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    return-void
.end method

.method onSideScreenSplitModeDeactivatedLocked()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    :goto_0
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getScaledWindowingModeLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    :cond_1
    return-void
.end method

.method onWindowsDrawn(Lcom/android/server/am/ActivityRecord;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inSideScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenWindowsDrawn(I)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeSideScreenRecents()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v1, 0x0

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_3
    return-void
.end method

.method registerEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->registerEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return-void
.end method

.method reparentTaskToSourceStackIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Z
    .locals 8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/SideScreenManagerService;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eq v7, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "reparentTaskToSourceStackIfNeeded"

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resizeOtherStacksInSideScreenLocked(Z)V
    .locals 17

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "am.resizeOtherStacksInSideScreenLocked"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v5, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    iget v6, v5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v7, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/SideScreenManagerService;->getBaseDisplayBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_0
    const/4 v7, 0x0

    if-ltz v6, :cond_4

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v9

    invoke-static {v9}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v9, v9, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/SideScreenManagerInternal;->calculateOppositeStackBounds(ILandroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v7, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    nop

    :cond_3
    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget-object v8, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-boolean v4, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v4, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v4, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method resizePrimaryStacksLocked()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/16 v2, 0x64

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v2, :cond_1

    nop

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isActivityTypeSideScreenRecents()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v1

    goto :goto_1

    :cond_0
    move-object v7, v0

    :goto_1
    invoke-virtual {v6, v7, v3, v3}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v2
.end method

.method resizeSideScreenLocked(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeSideScreenStackAndOtherStacksLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method resizeSideScreenStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "SideScreenManagerService"

    const-string/jumbo v3, "resizeSideScreenStackLocked: sideScreen stack not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->sideScreenStackResizeDisallowed(Lcom/android/server/wm/StackWindowController;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "am.resizeSideScreenStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    move-object v5, v6

    iput v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {v0, p2, p3, v5}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method resizeSideScreenStackWithScale(IZ)Z
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;-><init>(Lcom/android/server/am/SideScreenManagerService;IZ)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v8, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v10, :cond_2

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v3, :cond_3

    const-string v1, "SideScreenManagerService"

    const-string v2, "Secondary is removing now. skip scaling up."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    move-object v11, v2

    new-instance v12, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;

    move-object v2, v12

    move-object v3, p0

    move v4, p2

    move v5, p1

    move-object v6, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;-><init>(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, p1, v11, v9, v12}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    goto :goto_1

    :cond_5
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    :goto_1
    return v1

    :cond_6
    :goto_2
    return v9
.end method

.method resizeSideScreenStacksLocked(ILandroid/graphics/Rect;Z)Z
    .locals 8

    const-string v0, "am.resizeSideScreenStacksLocked"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7, p2, v6, v6}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-nez p3, :cond_3

    iget-object v5, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v4

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_4
    :goto_1
    return v3
.end method

.method setAnimDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    return-void
.end method

.method public setMaximizing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    return-void
.end method

.method setScaledWindowingModeLocked(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->setScaledWindowingMode(IZ)V

    return-void
.end method

.method setSideScreenMenuModeLocked(II)V
    .locals 9

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "menu_mode_on_primary"

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "menu_mode_on_secondary"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    const-class v2, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    :cond_1
    return-void
.end method

.method setSideScreenMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    return-void
.end method

.method setSideScreenMode(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenMode(I)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/am/SideScreenManagerService;->undockSideScreen(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->enterDockedMode()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenModeChanged(I)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    .locals 4
    .param p2    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p2, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->isSideScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    if-eq v6, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mTranslucentStackIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method showSideScreen(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->showSideScreen()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenRecentsStack()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenPrimaryStack()Z

    move-result v2

    xor-int/2addr v2, v1

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    new-instance v2, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$8srrKnI8D3Cmtok-orCInnPzEBA;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$8srrKnI8D3Cmtok-orCInnPzEBA;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/SideScreenManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showSideScreenRecentsActivity(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "SideScreenManagerService"

    const-string v4, "Default display isn\'t exsited. abort to show SideScreenRecentsActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    const/16 v4, 0x64

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v1, :cond_2

    iget-boolean v5, v0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-ne v1, v4, :cond_1

    iget v4, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0

    :cond_1
    iget v4, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iget-object v10, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v10, v4, v9}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingMode(II)V

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void

    :cond_2
    const/4 v5, 0x1

    if-eqz p2, :cond_3

    iget-boolean v7, v0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v7, :cond_3

    if-ne v1, v4, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v15

    const/16 v8, 0x65

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v9

    invoke-virtual {v2, v8, v9, v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v14, "swapWindowingMode"

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    :cond_3
    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    return-void
.end method

.method showSideScreenTasks()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->showSideScreen()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenRecentsStack()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenPrimaryStack()Z

    move-result v2

    xor-int/2addr v2, v1

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method startMovingSideScreen(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->startMovingSideScreen(II)V

    return-void
.end method

.method startMovingTopTask(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/SideScreenManagerInternal;->startMovingTopTask(IIII)V

    return-void
.end method

.method startSideScreenRecentsActivity(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SideScreenManagerService"

    const-string v2, "Default display isn\'t existed. abort to start SideScreenRecentsActivity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SideScreenManagerService"

    const-string v3, "CurrentUser isn\'t existed. abort to start SideScreenRecentsActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    const-string/jumbo v3, "startSideScreenRecentsActivity"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.intent.category.SIDE_SCREEN_PRIMARY_RECENTS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10010000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    :goto_0
    invoke-virtual {v4, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "startSideScreenRecentsActivity"

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/SideScreenManagerService;->startActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void
.end method

.method swapTaskWindowingModeFromSubWindowHandler(II)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v9, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : not found task."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : task isn\'t in SideScreen."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    move v11, v1

    if-ne v11, v8, :cond_2

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : same windowingMode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_4
    iget-object v1, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v12, v1

    if-nez v12, :cond_3

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : display is not exist."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_5
    invoke-virtual {v12, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v13, v1

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    move-object v14, v1

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v1, 0x64

    const/4 v6, 0x1

    if-ne v11, v1, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-direct {v7, v12, v1}, Lcom/android/server/am/SideScreenManagerService;->getNextStackInWindowingMode(Lcom/android/server/am/ActivityDisplay;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v1, v2, :cond_6

    move v3, v6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    new-instance v16, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$FK4MgWKnHPr8vFqr9LUSMG6tNE4;

    move-object/from16 v1, v16

    move-object v2, v7

    move-object v4, v12

    move v5, v10

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$FK4MgWKnHPr8vFqr9LUSMG6tNE4;-><init>(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V

    move-object/from16 v1, v16

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    if-ne v8, v15, :cond_7

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v4, v11, v2, v15, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z

    :cond_8
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move/from16 v10, p1

    :goto_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method undockSideScreen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->unregisterEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return-void
.end method

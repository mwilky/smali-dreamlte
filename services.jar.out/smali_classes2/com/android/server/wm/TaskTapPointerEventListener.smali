.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskTapPointerEventListener"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsDesktopMode:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mNeedsToRestoreDefaultIcon:Z

.field private mPointerIconType:I

.field private final mPointerTouchExcludeRegion:Landroid/graphics/Region;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDefaultPointerIconType(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2789

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    :goto_0
    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    return-void
.end method

.method onDisplayReady(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget v0, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    :cond_3
    and-int/lit16 v10, v3, 0xff

    if-eqz v10, :cond_21

    const/4 v11, 0x7

    if-eq v10, v11, :cond_4

    goto/16 :goto_d

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    :try_start_0
    iget-object v12, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12, v10, v11, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_a

    :cond_5
    if-eqz v12, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/16 v7, 0x3f6

    const/16 v15, 0x3f8

    const/16 v14, 0x3f9

    if-ge v10, v0, :cond_8

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v0, :cond_6

    move v0, v14

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v0, :cond_7

    move v0, v15

    goto :goto_2

    :cond_7
    move v0, v7

    :goto_2
    move v13, v0

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v10, v0, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v0, :cond_9

    move v0, v15

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v0, :cond_a

    move v0, v14

    goto :goto_3

    :cond_a
    move v0, v7

    :goto_3
    move v13, v0

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt v11, v0, :cond_c

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v0, :cond_d

    :cond_c
    const/16 v13, 0x3f7

    :cond_d
    :goto_4
    nop

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    if-nez v0, :cond_14

    if-eqz v6, :cond_11

    if-ne v13, v7, :cond_e

    const/16 v0, 0x4e26

    :goto_5
    move v13, v0

    goto :goto_6

    :cond_e
    const/16 v0, 0x3f7

    if-ne v13, v0, :cond_f

    const/16 v0, 0x4e27

    goto :goto_5

    :cond_f
    if-ne v13, v14, :cond_10

    const/16 v0, 0x4e28

    goto :goto_5

    :cond_10
    if-ne v13, v15, :cond_11

    const/16 v0, 0x4e29

    goto :goto_5

    :cond_11
    :goto_6
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_14

    iget-object v14, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v15, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;

    invoke-direct {v15, v10, v11}, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;-><init>(II)V

    invoke-virtual {v14, v15, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Region;->contains(II)Z

    move-result v15

    if-nez v15, :cond_13

    iget v15, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8b2

    if-eq v15, v5, :cond_13

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x96b

    if-eq v5, v15, :cond_13

    iget-object v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    const/16 v13, 0x3e8

    :cond_14
    iget v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v0, v13, :cond_1a

    iget-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    if-eqz v0, :cond_18

    if-eqz v12, :cond_18

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_16

    nop

    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v0

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v5, v0, :cond_15

    iput v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-direct {v1, v5}, Lcom/android/server/wm/TaskTapPointerEventListener;->setDefaultPointerIconType(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v5, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_15
    goto/16 :goto_d

    :cond_16
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    move v5, v0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    if-eqz v5, :cond_17

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v7, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit p0

    goto/16 :goto_d

    :cond_17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-static {v13}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v13, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_18
    :goto_8
    iput v13, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iget v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_19

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x37

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v5, v10, v11, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_19
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_1a
    :goto_9
    goto/16 :goto_d

    :cond_1b
    :goto_a
    iget-boolean v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-nez v5, :cond_1c

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v14, 0x1

    if-eq v5, v14, :cond_20

    :cond_1c
    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    iget-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    if-eqz v0, :cond_1d

    nop

    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v0

    iget-object v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v5

    if-ne v5, v7, :cond_1e

    if-eqz v6, :cond_1e

    const/16 v0, 0x4e21

    goto :goto_b

    :cond_1d
    if-eqz v6, :cond_1f

    const/16 v0, 0x4e21

    :cond_1e
    :goto_b
    move v13, v0

    goto :goto_c

    :cond_1f
    const/16 v0, 0x3e8

    goto :goto_b

    :goto_c
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_20
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    const-string v5, "TaskTapPointerEventListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v10, v0

    monitor-enter p0

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v11, :cond_22

    const-string v11, "TaskTapPointerEventListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onPointerEvent:  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") found display (event d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") (Listener d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v11, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v11}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v11

    if-ne v11, v7, :cond_24

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDefaultOrDexDisplay(I)Z

    move-result v7

    if-eqz v7, :cond_24

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v7, :cond_23

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "TaskTapPointerEventListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "send UPDATE_DISPLAY_ORDER to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x2730

    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v12, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v11, v5, v10, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_24
    invoke-virtual {v9, v5, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-nez v7, :cond_26

    iget-boolean v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    if-eqz v7, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    const/high16 v11, 0x10000000

    and-int/2addr v7, v11

    if-eqz v7, :cond_25

    monitor-exit p0

    goto :goto_d

    :cond_25
    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v11, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v11, v5, v10, v8}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V

    :cond_26
    monitor-exit p0

    nop

    :goto_d
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

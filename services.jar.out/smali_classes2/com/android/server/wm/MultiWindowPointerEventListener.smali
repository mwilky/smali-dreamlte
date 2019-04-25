.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1

.field private static final TOAST_UNRESIZEABLE_TASK:I = 0x1


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

.field private mNotResizeableRect:Landroid/graphics/Rect;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private final mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

.field private mTaskOrientation:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_3

    const/16 v2, 0x9

    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the keyguard is currently locked."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/MultiWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8b2

    if-ne v3, v4, :cond_2

    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_2
    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_3

    :try_start_3
    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: The screensaver is running."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_10

    iget-object v3, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_10

    const-string v3, "MultiWindowGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findTargetTaskBounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_5
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    if-ne v6, v5, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v4, "MultiWindowGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_8
    :try_start_6
    invoke-virtual {v1, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    if-ne v8, v7, :cond_9

    move v7, v5

    goto :goto_2

    :cond_9
    move v7, v2

    :goto_2
    if-eqz v7, :cond_a

    iget-object v8, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_a

    move v8, v5

    goto :goto_3

    :cond_a
    move v8, v2

    :goto_3
    if-eqz v8, :cond_b

    const-string v4, "MultiWindowGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findTargetTaskBounds: failed, docked task is adjusted by ime or Recents is visible, t"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_b
    :try_start_7
    iget v9, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v10, v10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v9, v2, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v9, v1, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v2, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->updateMinimalSize(II)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v2

    const/4 v9, 0x7

    if-ne v2, v9, :cond_d

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_c

    goto :goto_4

    :cond_c
    move v4, v5

    :goto_4
    iput v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_5

    :cond_d
    const/4 v9, 0x6

    if-ne v2, v9, :cond_e

    iput v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_5

    :cond_e
    const/4 v9, 0x5

    if-ne v2, v9, :cond_f

    iput v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    :cond_f
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_10
    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    return-void
.end method

.method private showToast(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateMinimalSize(II)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    :goto_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    :goto_1
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onConfigurationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_1
    return-void
.end method

.method onDisplayReady()V
    .locals 3

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SBIKE_MODE_PRESENT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->IsSBikeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MultiWindowGesture"

    const-string v1, "freeform gesture is blocked, SBike Mode is running."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    const-string v3, "MultiWindowGesture"

    const-string/jumbo v4, "mMultiWindowEdgeDetector is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/MultiWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "MultiWindowGesture"

    const-string v4, "freeform gesture is blocked, lock task mode is running."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/4 v3, 0x6

    const/4 v4, -0x1

    const v5, 0xc369

    const/4 v6, 0x0

    if-eq v0, v3, :cond_13

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_6

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    const-string v4, "MultiWindowGesture"

    const-string/jumbo v5, "onPointerEvent: not effective angle, failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_8

    if-eqz v3, :cond_16

    const-string v6, "MultiWindowGesture"

    const-string/jumbo v7, "onPointerEvent: failed, task is not resizable"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_7
    invoke-direct {p0, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v6, "MultiWindowGesture"

    const-string/jumbo v7, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_a
    invoke-direct {p0, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_3

    :cond_b
    if-eqz v3, :cond_10

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v8, v7, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    invoke-static {v8, v7, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v8

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V

    :cond_c
    if-eqz v8, :cond_d

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v10, v9}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    goto :goto_0

    :cond_d
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :goto_0
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v11, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_e
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    :cond_f
    goto :goto_1

    :cond_10
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    :cond_11
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_12
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    :goto_2
    goto :goto_3

    :cond_13
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_14
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v4, 0x65

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    nop

    :cond_16
    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowPointerEventListener{display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

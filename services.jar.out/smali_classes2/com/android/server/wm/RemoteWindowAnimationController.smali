.class Lcom/android/server/wm/RemoteWindowAnimationController;
.super Ljava/lang/Object;
.source "RemoteWindowAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "[RemoteWindowAnimationController] "

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field final mAdapterOwner:Lcom/android/server/wm/WindowState;

.field private mCanceled:Z

.field private mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mLinkedToDeathOfRunner:Z

.field private final mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

.field private mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStartingPosition:Landroid/graphics/Point;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/samsung/android/view/RemoteWindowAnimationAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteWindowAnimationController$0rufPruQSQwXVMf_sZM1L2PSu6c;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteWindowAnimationController$0rufPruQSQwXVMf_sZM1L2PSu6c;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mAdapterOwner:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RemoteWindowAnimationController;)Lcom/samsung/android/view/RemoteWindowAnimationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/RemoteWindowAnimationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteWindowAnimationController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->releaseFinishedCallback()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->invokeAnimationCancelled()V

    return-void
.end method

.method private invokeAnimationCancelled()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] invokeAnimationCancelled, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .locals 1

    const-string/jumbo v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->unlinkToDeathOfRunner()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->releaseFinishedCallback()V

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RemoteWindowAnimationController] onAnimationFinished, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$200(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteWindowAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "WindowManager"

    const-string v3, "[RemoteWindowAnimationController] Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteWindowAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    :cond_0
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] cancelAnimation(): reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mCanceled:Z

    if-eqz v1, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mCanceled:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->invokeAnimationCancelled()V

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

.method initialize(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    return v0
.end method

.method isRemoteAnimationAdapterOwner(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mAdapterOwner:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method startAnimation(Z)V
    .locals 4

    new-instance v0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;Lcom/android/server/wm/WindowState;Z)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->linkToDeathOfRunner()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] startAnimation, onAnimationStart is calling, mWin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isHiddenOnLeashCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onAnimationStart(Lcom/samsung/android/view/RemoteWindowAnimationTarget;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to start remote animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    :goto_0
    return-void
.end method

.method startVisibilityChangedAnimation(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteWindowAnimationController;->visibilityChangedAnimationNeeded(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x44fa0000    # 2000.0f

    iget-object v3, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->linkToDeathOfRunner()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] startVisibilityChangedAnimation, onVisibilityAnimationStart is calling, mWin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onVisibilityChangedAnimationStart(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to start remote visibility change animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void
.end method

.method visibilityChangedAnimationNeeded(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

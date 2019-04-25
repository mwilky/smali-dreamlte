.class Lcom/android/server/wm/TaskBackgroundController;
.super Ljava/lang/Object;
.source "TaskBackgroundController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TaskBackgroundController"


# instance fields
.field private mBackgroundSurface:Landroid/view/SurfaceControl;

.field private mBackgroundSurfaceIsShown:Z

.field private mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mParent:Lcom/android/server/wm/Task;

.field private mSurfaceAlpha:F

.field private mSurfaceH:I

.field private mSurfaceW:I

.field private mSurfaceX:F

.field private mSurfaceY:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceX:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceY:F

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceW:I

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceH:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdx:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdx:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdy:F

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdy:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceAlpha:F

    iput-object p1, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    return-void
.end method

.method private findCandidateTargetWindow()Lcom/android/server/wm/WindowState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideBackgroundSurface()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    const-string v0, "TaskBackgroundController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private reparentBackgroudSurface(Lcom/android/server/wm/WindowContainer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TaskBackgroundController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentBackgroudSurface: parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->reparent(Landroid/os/IBinder;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "TaskBackgroundController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentBackgroudSurface: failed, p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceY:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceX:F

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceH:I

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceW:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdx:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdx:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdy:F

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdy:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceAlpha:F

    return-void
.end method

.method private setAlphaInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getAlpha()F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceAlpha:F

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TaskBackgroundController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlphaInTransaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setMatrixInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    iget v7, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdx:F

    cmpl-float v7, v7, v2

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdx:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdy:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdy:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iput v2, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdx:F

    iput v4, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdx:F

    iput v6, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDtdy:F

    iput v5, p0, Lcom/android/server/wm/TaskBackgroundController;->mLastDsdy:F

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v7, "TaskBackgroundController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMatrixInTransaction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private setPositionInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceX:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceX:F

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceY:F

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "TaskBackgroundController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPositionInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private setSizeInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceW:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceH:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iput v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceW:I

    iput v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mSurfaceH:I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0, v1}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "TaskBackgroundController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSizeInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private showBackgroundSurface()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    const-string v0, "TaskBackgroundController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBackgroundSurface:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateTargetAndVisilbity()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/TaskBackgroundController;->findCandidateTargetWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskBackgroundController;->reparentBackgroudSurface(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {p0}, Lcom/android/server/wm/TaskBackgroundController;->showBackgroundSurface()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskBackgroundController;->reparentBackgroudSurface(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {p0}, Lcom/android/server/wm/TaskBackgroundController;->hideBackgroundSurface()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createBackgroundSurface()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    const-string v1, "TaskBackgroundController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBackgroundSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method destoryBackgroundSurface()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const-string v0, "TaskBackgroundController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destoryBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/server/wm/TaskBackgroundController;->reset()V

    :cond_0
    return-void
.end method

.method hasBackgroundSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method prepareBackgroundSurfaces()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const-string v0, "TaskBackgroundController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareSurfaces: mBackgroundSurface is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/TaskBackgroundController;->updateTargetAndVisilbity()V

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskBackgroundController;->setAlphaInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskBackgroundController;->setPositionInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskBackgroundController;->setSizeInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskBackgroundController;->setMatrixInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskBackground {taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mParent:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskBackgroundController;->hasBackgroundSurface()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundSurfaceIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskBackgroundController;->mBackgroundTargetWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

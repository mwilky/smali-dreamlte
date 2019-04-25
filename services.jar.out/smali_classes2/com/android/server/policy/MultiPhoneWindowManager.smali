.class public Lcom/android/server/policy/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/MultiWindowManagerPolicy;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mImeTargetFreeformTaskId:I

.field mIsSmartPopUpServiceBind:Z

.field mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mOverlappedFreeformWithNaviBar:Z

.field mPackageInSmartPopupView:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field final mSmartPopupViewConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    iput-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    new-instance v0, Lcom/android/server/policy/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSmartPopupViewConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static adjustImmersiveFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 2

    if-eqz p0, :cond_2

    if-eq p1, p0, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    move v0, p2

    and-int/lit16 v1, p2, 0x1802

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    and-int/lit16 v0, v0, -0x1803

    :cond_1
    return v0

    :cond_2
    return p2
.end method

.method static getCandidateWindowState(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public static synthetic lambda$minimizeAllFreeformTasks$0(Lcom/android/server/policy/MultiPhoneWindowManager;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeFreeformTask(I)V

    return-void
.end method


# virtual methods
.method bindSmartPopupView()V
    .locals 7

    const-string v0, "MultiPhoneWindowManager"

    const-string v1, "bindSmartPopupView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.samsung.android.systemui.smartpopupview.floatingactivity.service.NotificationListener"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSmartPopupViewConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "SmartPopupView can\'t bind"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    goto :goto_0

    :cond_0
    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "SmartPopupView started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchBoundsForMetaKeyEvent, win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    move-object v0, p2

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->setMultiWindowPolicy(Lcom/android/server/policy/MultiPhoneWindowManager;)V

    return-void
.end method

.method isExpandedDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->isExpandedDockedStackLocked()Z

    move-result v0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->isMinimizedDock()Z

    move-result v0

    return v0
.end method

.method isOverlappedFreeformWithNaviBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    return v0
.end method

.method public isQuickPanelExpanded()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarHeight(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isSnapWindowRunning()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method minimizeAllFreeformTasks(I)V
    .locals 6

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minimizeAllFreeformTasks: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(IZI)Z

    iget v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const-string v1, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minimizeFreeformTask, mImeTargetFreeformTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$MultiPhoneWindowManager$yX6SsLfp3sYFlR4pF49zZdysdvA;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/-$$Lambda$MultiPhoneWindowManager$yX6SsLfp3sYFlR4pF49zZdysdvA;-><init>(Lcom/android/server/policy/MultiPhoneWindowManager;I)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    return-void
.end method

.method minimizeFreeform(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "MultiPhoneWindowManager"

    const-string/jumbo v1, "minimizeFreeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    return-void
.end method

.method resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeFreeformTask, token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    return-void
.end method

.method setMultiWindowEnabled(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v1, "MultiPhoneWindowManager"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method setOverlappedFreeformWithNaviBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mOverlappedFreeformWithNaviBar:Z

    :cond_0
    return-void
.end method

.method shouldBeHiddenByMultiWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0xa2c

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->isForceHideFloatingMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method toggleSideScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleSideScreen()V

    return-void
.end method

.method unBindSmartPopupView()V
    .locals 2

    const-string v0, "MultiPhoneWindowManager"

    const-string/jumbo v1, "unBindSmartPopupView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mSmartPopupViewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method updateImeTargetFreeformTaskId(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->getImeTargetFreeformTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeTargetFreeformTaskId: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

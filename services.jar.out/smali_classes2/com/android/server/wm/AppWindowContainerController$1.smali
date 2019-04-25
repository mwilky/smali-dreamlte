.class Lcom/android/server/wm/AppWindowContainerController$1;
.super Ljava/lang/Object;
.source "AppWindowContainerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "mContainer was null while trying to add starting window"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez v1, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startingData was nulled out before handling mAddStartingWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": startingData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    move-object v3, v0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "WindowManager"

    const-string v6, "Exception when adding starting window"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v3, :cond_d

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v6, :cond_8

    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v6, :cond_6

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Has startingSurface already. AppWindowContainerController="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", startingSurface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    :cond_7
    iput-object v3, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_2

    :cond_8
    :goto_1
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v6, :cond_9

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aborted starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": removed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " startingData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v4, 0x1

    :goto_2
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v6, :cond_a

    if-nez v4, :cond_a

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added starting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": startingWindow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " startingView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_c

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_3
    iget-object v7, v2, Lcom/android/server/wm/AppWindowToken;->mCustomStartingWindowKey:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mCustomStartingWindowKey:Ljava/lang/String;

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v7, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/CustomStartingWindowController;->isCustomImageLoaded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "WindowManager"

    const-string v5, "Calling GC after removing custom starting window with image"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_c
    :goto_4
    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_e

    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface returned was null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    return-void

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

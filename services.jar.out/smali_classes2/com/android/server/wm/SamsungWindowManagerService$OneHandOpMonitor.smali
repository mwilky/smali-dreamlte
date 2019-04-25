.class Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneHandOpMonitor"
.end annotation


# instance fields
.field private mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;Lcom/android/server/wm/SamsungWindowManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    invoke-interface {v2}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const-string v2, "SamsungWindowManager"

    const-string v4, "OneHandOp service has died unexpectedly"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SamsungWindowManagerService;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "any_screen_running"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->restartOneHandOpService()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.class final Lcom/android/server/wm/SamsungWindowManagerService$H;
.super Landroid/os/Handler;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final UPDATE_COVER_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v3, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v1, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->access$100(Lcom/android/server/wm/SamsungWindowManagerService;Z)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-boolean v3, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v1, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->access$200(Lcom/android/server/wm/SamsungWindowManagerService;Z)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x15

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$H;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->notifyMobileKeyboardCoverChanged(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

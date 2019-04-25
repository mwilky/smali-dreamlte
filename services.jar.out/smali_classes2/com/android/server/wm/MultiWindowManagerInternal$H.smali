.class final Lcom/android/server/wm/MultiWindowManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW:I = 0x12e

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_DURATION:I = 0x3e8

.field public static final MULTIWINDOW_ENSURE_DOCKED_DEFERRED_ANIMATION_DURATION:I = 0x3e8

.field public static final MULTIWINDOW_ENSURE_DOCKED_DEFERRED_ANIMATION_TIMEOUT:I = 0xce

.field public static final MULTIWINDOW_ENSURE_DOCKED_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK:I = 0x65

.field public static final MULTIWINDOW_SHOW_GUIDE_WINDOW:I = 0x12d

.field public static final NOTIFY_LID_STATE_CHANGED:I = 0xcf

.field public static final NOTIFY_SIDE_SCREEN_DOCK_SIDE_CHANGED:I = 0xcd

.field public static final NOTIFY_SIDE_SCREEN_MENU_VISIBILITY_CHANGED:I = 0xca

.field public static final NOTIFY_SIDE_SCREEN_TASK_SWITCHED:I = 0xcb

.field public static final SWAP_WINDOWING_MODE:I = 0xcc


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$100(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    const-string/jumbo v1, "tap_outside"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$100(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformWindowController;

    move-result-object v2

    const-string/jumbo v3, "tap_outside"

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/FreeformWindowController;->showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/Display;)V

    goto/16 :goto_5

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyLidStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->access$000(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    goto/16 :goto_5

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenDockSideChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    goto :goto_5

    :pswitch_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->swapWindowingMode(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenTaskSwitched(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_1
    goto :goto_5

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenMenuVisibilityChanged(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    :goto_2
    goto :goto_5

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    :try_start_5
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    :goto_3
    goto :goto_5

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    :try_start_6
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v2

    :goto_4
    nop

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final BIND_MINIMIZE_CONTAINER_SERVICE:I = 0x69

.field public static final MOVING_FREEFORM_TASK_TO_BACK_TIMEOUT:I = 0x6b

.field public static final NOTIFY_APPLY_FREEFORM_MINIMIZE_POLICY:I = 0x68

.field public static final NOTIFY_CREATE_PAIR_APP_SHORTCUT_ONE_APP_FAIL_TOAST:I = 0xd1

.field public static final NOTIFY_CREATE_PAIR_APP_SHORTCUT_OTHER_WORKSPACE_FAIL_TOAST:I = 0xd4

.field public static final NOTIFY_CREATE_PAIR_APP_SHORTCUT_SECURE_FOLDER_FAIL_TOAST:I = 0xd3

.field public static final NOTIFY_CREATE_PAIR_APP_SHORTCUT_TWO_APP_FAIL_TOAST:I = 0xd2

.field public static final NOTIFY_FOCUS_STACK_CHANGED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_STATE_CHANGED:I = 0x65

.field public static final NOTIFY_FREEFORM_WINDOW_ANIMATION_END:I = 0x66

.field public static final NOTIFY_MULTIWINDOW_ENABLE_CHANGED:I = 0xca

.field public static final NOTIFY_SNAP_WINDOW_VISIBILITY_CHANGED:I = 0xcb

.field public static final SCHEDULE_INITIALIZE_PAIR_ACTIVITY_MODE:I = 0xcf

.field public static final SCHEDULE_INITIALIZE_PAIR_ACTIVITY_MODE_DURATON:I = 0x7d0

.field public static final SCHEDULE_MINIMIZE_ALL:I = 0x67

.field public static final SHOW_NOT_SUPPORT_MULTI_WINDOW_TOAST:I = 0x6e

.field public static final UNBIND_MINIMIZE_CONTAINER_SERVICE:I = 0x6a


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0xcf

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10405da

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10405db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "splitScreenPrimaryAppLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "splitScreenSecondaryAppLabel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v6}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10405d9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v2

    aput-object v4, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10405d8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$300(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/am/FreeformController;->removeMovingToBackFreeformTaskLocked(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreeformController;->isMovingToBackFreeformTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v3

    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/FreeformController;->finishMovingFreeformTaskToBackLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNBIND_MINIMIZE_CONTAINER_SERVICE, windowingMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v2

    const-string v3, "all freeform stack detached"

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_MINIMIZE_CONTAINER_SERVICE, windowingMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v2

    const-string/jumbo v3, "freeform stack attached"

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/FreeformController;->applyFreeformMinimizePolicyLocked(I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked()Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    nop

    :goto_1
    if-ge v2, v7, :cond_4

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v8, v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onAnimationEnd(IIILandroid/graphics/Rect;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v9

    :try_start_8
    const-string v10, "MultiWindowManager"

    const-string/jumbo v11, "onAnimationEnd, RemoteException occured"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    move v10, v3

    nop

    :goto_3
    if-ge v2, v10, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catch_1
    move-exception v11

    :try_start_b
    const-string v12, "MultiWindowManager"

    const-string/jumbo v13, "onStateChanged, RemoteException occured"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    goto :goto_6

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v5, v4, v2}, Lcom/android/server/am/MultiWindowManagerService;->access$700(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_5
    move v3, v6

    if-ltz v3, :cond_8

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v7, v6, v2}, Lcom/android/server/am/MultiWindowManagerService;->access$700(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    :cond_7
    add-int/lit8 v6, v3, -0x1

    goto :goto_5

    :cond_8
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6

    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_9
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10402e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    nop

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

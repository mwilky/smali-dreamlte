.class final Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "SideScreenStackPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenStackPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SideScreenStackPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 8

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v2}, Lcom/android/server/wm/SideScreenStackPositioner;->access$000(Lcom/android/server/wm/SideScreenStackPositioner;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_2

    const-string v4, "SideScreenStackPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CANCEL @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4, v5}, Lcom/android/server/wm/SideScreenStackPositioner;->access$002(Lcom/android/server/wm/SideScreenStackPositioner;Z)Z

    goto/16 :goto_0

    :pswitch_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_3

    const-string v4, "SideScreenStackPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->access$100(Lcom/android/server/wm/SideScreenStackPositioner;)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->access$200(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget v5, v5, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragX:F

    sub-float v5, v2, v5

    iget-object v6, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget v6, v6, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragY:F

    sub-float v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->access$200(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/PointF;->length()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v5}, Lcom/android/server/wm/SideScreenStackPositioner;->access$300(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/SideScreenStackPositioner;->updateDragMode(FF)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wm/SideScreenStackPositioner;->access$102(Lcom/android/server/wm/SideScreenStackPositioner;I)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v4, v4, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v6, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v6, v2, v3}, Lcom/android/server/wm/SideScreenStackPositioner;->access$400(Lcom/android/server/wm/SideScreenStackPositioner;FF)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/wm/SideScreenStackPositioner;->access$002(Lcom/android/server/wm/SideScreenStackPositioner;Z)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->onActionMove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :pswitch_2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_5

    const-string v4, "SideScreenStackPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4, v5}, Lcom/android/server/wm/SideScreenStackPositioner;->access$002(Lcom/android/server/wm/SideScreenStackPositioner;Z)Z

    goto :goto_0

    :pswitch_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_6

    const-string v4, "SideScreenStackPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-static {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->access$000(Lcom/android/server/wm/SideScreenStackPositioner;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->onDragEnded()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v4, v4, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenManagerInternal;->finishStackPositioning()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_6
    const-string v3, "SideScreenStackPositioner"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

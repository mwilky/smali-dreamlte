.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    instance-of v0, v2, Landroid/view/MotionEvent;

    if-eqz v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_15

    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/view/MotionEvent;

    const/4 v5, 0x0

    move v6, v5

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    move v8, v0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    move v9, v0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_CANCEL @ {"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0, v7}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_e

    :pswitch_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_MOVE @ {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v11, v8, v9}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v11

    invoke-static {v0, v11}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_0
    move v10, v0

    if-eqz v10, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_5

    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->touchFocusTransferred()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0, v7}, Lcom/android/server/wm/TaskPositioner;->access$602(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_5
    :goto_1
    if-eqz v10, :cond_1a

    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$800(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v11

    if-gt v0, v11, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v12}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v12

    if-gt v11, v12, :cond_7

    move v11, v7

    goto :goto_3

    :cond_7
    move v11, v5

    :goto_3
    iget-object v12, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v12}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v13}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v13

    if-lt v12, v13, :cond_8

    move v12, v7

    goto :goto_4

    :cond_8
    move v12, v5

    :goto_4
    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v13}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$1300(Lcom/android/server/wm/TaskPositioner;)I

    move-result v14

    if-lt v13, v14, :cond_9

    move v13, v7

    goto :goto_5

    :cond_9
    move v13, v5

    :goto_5
    if-eqz v0, :cond_b

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$1400(Lcom/android/server/wm/TaskPositioner;)I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_a

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    sub-int/2addr v15, v3

    iput v15, v14, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_a
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    :cond_b
    :goto_6
    if-eqz v11, :cond_d

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1400(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_c
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    :cond_d
    :goto_7
    if-eqz v12, :cond_f

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1400(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->right:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->left:I

    goto :goto_8

    :cond_e
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    :cond_f
    :goto_8
    if-eqz v13, :cond_11

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1400(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1300(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->top:I

    goto :goto_9

    :cond_10
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1300(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    :cond_11
    :goto_9
    if-eqz v0, :cond_12

    if-nez v11, :cond_13

    :cond_12
    if-eqz v12, :cond_14

    if-eqz v13, :cond_14

    :cond_13
    move v3, v7

    goto :goto_a

    :cond_14
    move v3, v5

    :goto_a
    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_19

    float-to-int v14, v8

    float-to-int v15, v9

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v14, v7, :cond_15

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iput v14, v7, Landroid/graphics/Rect;->left:I

    :cond_15
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v14, v7, :cond_16

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iput v14, v7, Landroid/graphics/Rect;->right:I

    :cond_16
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v15, v7, :cond_17

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iput v15, v7, Landroid/graphics/Rect;->top:I

    :cond_17
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v15, v7, :cond_18

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    :cond_18
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_19
    iget-object v5, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v14, 0x1

    invoke-virtual {v5, v7, v14}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    goto :goto_c

    :cond_1a
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    const-wide/16 v11, 0x20

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v5, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v0, v3, v5, v7}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_b
    :try_start_7
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_1b
    :goto_c
    goto/16 :goto_e

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP @ {"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_1d

    :try_start_a
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->touchFocusTransferred()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->access$602(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_d

    :catch_2
    move-exception v0

    :cond_1d
    :goto_d
    :try_start_b
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto :goto_e

    :pswitch_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_1e

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DOWN @ {"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$800(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    move v3, v0

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$1500(Lcom/android/server/wm/TaskPositioner;)V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-nez v3, :cond_1f

    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_f

    :catch_3
    move-exception v0

    :cond_1f
    :goto_f
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v3, :cond_20

    :try_start_10
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    move-object v5, v0

    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$1600(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz v5, :cond_20

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeFreeformTask(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_10

    :catchall_1
    move-exception v0

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catch_4
    move-exception v0

    nop

    :cond_20
    :goto_10
    :try_start_15
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_11

    :catchall_2
    move-exception v0

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :cond_21
    :goto_11
    const/4 v6, 0x1

    :goto_12
    invoke-virtual {v1, v2, v6}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_13

    :catchall_3
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    :try_start_18
    const-string v3, "WindowManager"

    const-string v5, "Exception caught by drag handleMotion"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_12

    :goto_13
    return-void

    :goto_14
    invoke-virtual {v1, v2, v6}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    :cond_22
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

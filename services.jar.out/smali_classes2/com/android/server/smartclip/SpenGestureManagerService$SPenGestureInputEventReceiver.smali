.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private sCfmsService:Landroid/os/ICustomFrequencyManager;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private sendEventToCfmsService(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "HOVERING_EVENT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "HOVERING_EVENT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "HOVERING_EVENT"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_9

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2500()I

    move-result v5

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6, v2, v3, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6, v2, v3, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2900(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    :cond_1
    const/4 v6, 0x2

    if-eqz v4, :cond_2

    const/4 v8, 0x7

    if-eq v3, v8, :cond_2

    if-eq v3, v6, :cond_2

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onInputEvent 4 : Action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", sideButtonPressed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", coverOpened="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v8, 0x0

    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-ne v9, v5, :cond_3

    const/4 v8, 0x1

    :cond_3
    const/16 v9, 0x9

    if-ne v3, v9, :cond_4

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    invoke-direct {p0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    goto :goto_1

    :cond_4
    const/16 v9, 0xa

    const/16 v10, 0x3018

    if-ne v3, v9, :cond_5

    invoke-direct {p0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v10, v0, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v9, 0x32

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    if-nez v3, :cond_7

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "[HOVER] sending hover exit br is canceled by touch event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-direct {p0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    :cond_7
    :goto_1
    if-ne v8, v5, :cond_8

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v0

    if-lt v0, v7, :cond_8

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v0

    if-lt v0, v7, :cond_8

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    :goto_2
    const-string/jumbo v5, "onInputEvent : default"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :cond_a
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

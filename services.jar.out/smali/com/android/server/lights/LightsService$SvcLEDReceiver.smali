.class final Lcom/android/server/lights/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    const-string v3, "LightsService"

    const-string v4, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const-string v1, "com.android.server.LightsService.action.MULTIPLE_LEDS_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/lights/LightsService$SvcLEDReceiver$1;-><init>(Lcom/android/server/lights/LightsService$SvcLEDReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.sec.factory.START_LED_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    const-string v3, "LightsService"

    const-string v4, "[api] [MHS] onReceive : START_FTA_LED_CONTROL -> LedsControl is blocked by FTA"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$1602(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$4000(Lcom/android/server/lights/LightsService;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_2
    const-string v1, "com.sec.factory.STOP_LED_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    const-string v3, "LightsService"

    const-string v4, "[api] [MHS] onReceive : STOP_FTA_LED_CONTROL -> LedsControl will work fine"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$4000(Lcom/android/server/lights/LightsService;)V

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$1602(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    :cond_3
    const-string v1, "com.sec.fota.LED_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    const-string v3, "LightsService"

    const-string v4, "[api] [MHS] onReceive : ACTION_FOTA_LED_CONTROL"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$4100(Lcom/android/server/lights/LightsService;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

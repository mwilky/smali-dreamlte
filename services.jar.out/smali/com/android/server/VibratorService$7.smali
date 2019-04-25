.class Lcom/android/server/VibratorService$7;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "reason"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const-string v3, "VibratorService"

    const-string v4, "Keep screen turned off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$Vibration;->isFromSystem()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/VibratorService$Vibration;

    iget-object v5, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v5

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5, v4}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_5
    goto :goto_0

    :cond_6
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$3202(Lcom/android/server/VibratorService;Z)Z

    goto :goto_1

    :cond_8
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$3202(Lcom/android/server/VibratorService;Z)Z

    :cond_9
    :goto_1
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$3300(Lcom/android/server/VibratorService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v2, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$3400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibration"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$7;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$3302(Lcom/android/server/VibratorService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v0, "VibratorService"

    const-string v1, "SemGoodCatchManager is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

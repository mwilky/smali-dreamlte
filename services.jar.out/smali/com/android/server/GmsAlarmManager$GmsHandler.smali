.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3900(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$4000(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    const-wide/16 v5, 0x2710

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3800(Lcom/android/server/GmsAlarmManager;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3600(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3700(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3500(Lcom/android/server/GmsAlarmManager;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string v1, "com.android.server.gmsalarmmanager"

    const-string v2, "GNET"

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/GmsAlarmManager;->access$3300(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$3400(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v1, 0x5265c00

    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->access$200(Lcom/android/server/GmsAlarmManager;J)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GmsAlarmManager"

    const-string v1, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GmsAlarmManager"

    const-string v1, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    goto/16 :goto_5

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v5, "receiver delay check network message"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v5, 0xdbba0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "GmsAlarmManager"

    const-string v1, "Screen is off,skip check"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1200(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    const/16 v6, 0xc8

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v7, "https://www.google.com/"

    invoke-static {v5, v7, v6}, Lcom/android/server/GmsAlarmManager;->access$1800(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5, v3}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_d
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2000(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v7, "https://www.google.com/"

    invoke-static {v5, v7, v6}, Lcom/android/server/GmsAlarmManager;->access$1800(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_e
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5, v3}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_f
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    :goto_1
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v6}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v4}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_10
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v4, v4, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-virtual {v6, v5}, Lcom/android/server/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v6}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v4}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_12
    :goto_3
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v4, v3}, Lcom/android/server/GmsAlarmManager;->access$702(Lcom/android/server/GmsAlarmManager;Z)Z

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_4

    :cond_13
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_4
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_5

    :cond_14
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    nop

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

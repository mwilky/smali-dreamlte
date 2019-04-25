.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_0

    :pswitch_5
    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "OUT"

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "HIGH"

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "MID"

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "LOW"

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$5500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :pswitch_18
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
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
    .end packed-switch
.end method

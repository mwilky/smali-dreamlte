.class final Lcom/android/server/desktopmode/DockManager$DockHandler;
.super Landroid/os/Handler;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DockManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x96

    if-eq v1, v2, :cond_17

    const/16 v2, 0xdd

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_13

    const/16 v2, 0xe7

    if-eq v1, v2, :cond_10

    const/16 v2, 0x64

    packed-switch v1, :pswitch_data_0

    const/16 v2, 0x65

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE onChargingModeUpdated, fastCharging="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v3, 0x3

    const-string v4, "controllib"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v3, "fast_charging_using"

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string v4, "controllib"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$400(Lcom/android/server/desktopmode/DockManager;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$500(Lcom/android/server/desktopmode/DockManager;)V

    goto/16 :goto_6

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO onConnectedPowerChargerInfoUpdated, power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " previous power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " support="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mAdaptiveFastChargingSettingsEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->access$1800(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1800(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v5, v7, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eq v5, v4, :cond_4

    if-nez v5, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v2

    if-eq v1, v2, :cond_b

    :cond_6
    const/16 v2, 0xf

    if-ge v1, v2, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-lt v3, v2, :cond_b

    :cond_7
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateDockLowChargerPower true"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-ge v3, v2, :cond_b

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateDockLowChargerPower false"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    const/4 v6, 0x1

    :cond_b
    :goto_1
    if-eqz v6, :cond_19

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1702(Lcom/android/server/desktopmode/DockManager;I)I

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DockManager;->access$1902(Lcom/android/server/desktopmode/DockManager;I)I

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v3, "dockLowChargerPowerUpdated"

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY dockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1300(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE setFastChargingEnable, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v3

    if-eqz v3, :cond_19

    :try_start_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->setFastChargingEnable(Z)V
    :try_end_0
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    :goto_2
    goto/16 :goto_6

    :pswitch_4
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO requestConnectedPowerChargerInfoUpdate"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->requestConnectedPowerChargerInfoUpdate()V
    :try_end_1
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    :goto_3
    goto/16 :goto_6

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DOCK_FAST_CHARGING_REQUEST_CREATE dockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1200(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_6

    :cond_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED onDSVersionUpdated, version="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v2

    const/16 v3, 0x67

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v5, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1602(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_12
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string v3, "####"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DockManager;->access$1602(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/DockManager;->access$000(Lcom/android/server/desktopmode/DockManager;Z)V

    goto/16 :goto_6

    :cond_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOCK_FAST_CHARGING_ERROR onError, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v2

    const/16 v5, 0x66

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    const/4 v2, -0x5

    if-lt v1, v2, :cond_15

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_15
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_16
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v3

    const/16 v4, 0x68

    const/16 v5, 0xf1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    goto :goto_6

    :cond_17
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DockManager;->access$1100(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/State;)V

    nop

    :cond_19
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

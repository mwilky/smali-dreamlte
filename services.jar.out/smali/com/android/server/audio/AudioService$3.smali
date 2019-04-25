.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/16 v0, 0xb

    const/4 v4, 0x0

    if-eq v2, v0, :cond_a

    const/16 v0, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v0, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    if-ne v15, v5, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    move v5, v6

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v10, 0x80

    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x66

    const/4 v14, -0x1

    move v13, v15

    move v4, v15

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v5, v3

    check-cast v5, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v6, :cond_2

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v5, :cond_6

    :cond_2
    const/4 v0, 0x0

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v6, :cond_4

    if-eq v8, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3800(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_5

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_5

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    :cond_6
    monitor-exit v7

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_7
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    if-ne v15, v5, :cond_8

    goto :goto_2

    :cond_8
    move v6, v4

    :goto_2
    move v5, v6

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v10, 0x8000000

    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x69

    const/4 v14, 0x0

    move v13, v15

    move v4, v15

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    :cond_9
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v13

    monitor-enter v13

    :try_start_b
    invoke-interface {v3, v4}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0x65

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    monitor-exit v13

    goto :goto_3

    :catchall_5
    move-exception v0

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :cond_b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

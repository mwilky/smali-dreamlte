.class Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "factoryteststate=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_0
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "factoryteststate=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_1
    const-string v0, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "flipOpen"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15202(Lcom/android/server/audio/AudioService;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "folder_open="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15200(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_2
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x6c

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_e

    :cond_3
    const-string v0, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15302(Lcom/android/server/audio/AudioService;I)I

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on receive : mNbQualityMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_e

    :cond_4
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const v6, 0x8000

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v0, :cond_a

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;)Z

    move-result v9

    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiDisplay device state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isConnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10, v6, v0, v7}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    if-ne v0, v8, :cond_5

    if-nez v9, :cond_5

    const-string v10, "AudioService"

    const-string v11, "WifiDisplay is connected."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "audioParam;ScreenMirroringState=on"

    invoke-static {v10}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10, v8}, Lcom/android/server/audio/AudioService;->access$15502(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v12, "0"

    invoke-static {v11, v6, v12}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v13, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v14, "0"

    const-string/jumbo v15, "remote-submix"

    invoke-direct {v12, v13, v6, v14, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v10

    invoke-virtual {v6, v10, v5}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_7

    if-eqz v9, :cond_7

    const-string v5, "AudioService"

    const-string v10, "WifiDisplay is disconnected."

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audioParam;ScreenMirroringState=off"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15502(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, "0"

    invoke-static {v10, v6, v11}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15700(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_6
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v4, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SplitSound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    :cond_7
    :goto_0
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v5, :cond_9

    if-ne v0, v8, :cond_8

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "isSupportDisplayVolumeControl"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15802(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_1

    :cond_8
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15802(Lcom/android/server/audio/AudioService;Z)Z

    :goto_1
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15800(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$15902(Lcom/android/server/audio/AudioService;Z)Z

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$15800(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    goto/16 :goto_e

    :cond_a
    const-string v0, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_b

    const-string v4, "AudioService"

    const-string v5, "GoogleCastDevice is connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, "0"

    const-string/jumbo v10, "remote-submix"

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ScreenMirroringState=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const-string v4, "AudioService"

    const-string v5, "GoogleCastDevice is disconnected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ScreenMirroringState=off"

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_e

    :cond_c
    const-string v0, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CONNECTION_MODE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdFixedVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_d
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "logging"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16000(Lcom/android/server/audio/AudioService;)V

    const-string v0, "dev_shutdown=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v8, v4, v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    :cond_e
    goto/16 :goto_e

    :cond_f
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v0, :cond_41

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16200(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_e

    :cond_10
    const-string v0, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_13

    :try_start_0
    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-ne v0, v6, :cond_11

    const-string/jumbo v4, "earcare=reset"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3

    :cond_11
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    if-ne v0, v8, :cond_12

    move v4, v8

    nop

    :cond_12
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$16302(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16400(Lcom/android/server/audio/AudioService;)V

    :goto_3
    goto/16 :goto_e

    :catch_0
    move-exception v0

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_PSEUDO_DUAL_SPEAKER:Z

    if-eqz v0, :cond_14

    const-string v0, "com.samsung.android.intent.action.AUDIO_DUAL_SPEAKER_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$16502(Lcom/android/server/audio/AudioService;I)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16500(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$16600(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_e

    :cond_14
    const-string v0, "com.sec.tms.audio.server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "app"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_TMS_STATE_CHANGED app: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " state : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "server"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v7, 0x20000000

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$16700(Lcom/android/server/audio/AudioService;I)Z

    move-result v6

    if-ne v0, v9, :cond_15

    if-eqz v6, :cond_15

    const-string v8, ""

    const-string v9, ""

    invoke-static {v7, v4, v8, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    if-ne v0, v8, :cond_16

    if-nez v6, :cond_16

    const-string v4, ""

    const-string v9, ""

    invoke-static {v7, v8, v4, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v9, v10, v7, v11, v12}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_4
    goto :goto_5

    :cond_17
    const-string v6, "client"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v7, -0x78000000

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$16700(Lcom/android/server/audio/AudioService;I)Z

    move-result v6

    if-ne v0, v9, :cond_18

    if-eqz v6, :cond_18

    const-string v8, ""

    const-string v9, ""

    invoke-static {v7, v4, v8, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_18
    if-ne v0, v8, :cond_19

    if-nez v6, :cond_19

    const-string v4, ""

    const-string v9, ""

    invoke-static {v7, v8, v4, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v9, v10, v7, v11, v12}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_5
    goto/16 :goto_e

    :cond_1a
    const-string v0, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "AudioService"

    const-string v4, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "logging"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1b
    const-string v0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "AudioService"

    const-string v4, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$16802(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "logging;bigdataApp"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1c
    const-string v0, "com.sec.media.action.mute_interval"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16900(Lcom/android/server/audio/AudioService;)V

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Mute Interval] remaining time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getRemainingMuteIntervalMs()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_1d
    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mute"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$17002(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$17100(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_e

    :catch_1
    move-exception v0

    return-void

    :cond_1e
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v0, :cond_21

    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "status"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "player_type"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v8, :cond_20

    if-eqz v5, :cond_1f

    if-eq v5, v9, :cond_1f

    if-ne v5, v7, :cond_20

    :cond_1f
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v8}, Lcom/android/server/audio/AudioService;->access$17202(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_6

    :cond_20
    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$17202(Lcom/android/server/audio/AudioService;Z)Z

    :goto_6
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsDLNAEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$17200(Lcom/android/server/audio/AudioService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_21
    const-string v0, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "enabled"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    goto/16 :goto_e

    :cond_22
    const-string v0, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_23

    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr swb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=SWB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_8

    :cond_23
    if-ne v0, v8, :cond_24

    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr wb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=WB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_8

    :cond_24
    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr nb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=NB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_8
    goto/16 :goto_e

    :cond_25
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "AudioService"

    const-string v4, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_26
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.extra.UID"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") is removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    const/16 v10, 0x64

    if-eqz v9, :cond_2b

    const-string v9, "com.samsung.android.oneconnect"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$MultiSoundManager;->resetPinDevice()V

    goto :goto_9

    :cond_27
    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(IZ)I

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/audio/AudioService$MultiSoundManager;->removeItem(I)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x76

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->showMultisoundToast()V

    :cond_28
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    if-ne v5, v7, :cond_29

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iput v6, v5, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    :cond_29
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/audio/AppCategorizer;->removePackage(I)V

    :cond_2a
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolume(II)V

    goto :goto_9

    :cond_2b
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolume(II)V

    :goto_9
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17400(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->delete(I)V

    const-string v4, "com.samsung.android.soundassistant"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17500(Lcom/android/server/audio/AudioService;)V

    :cond_2c
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->access$17600(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2d
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v5, :cond_31

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService;->getUidForPackage(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_31

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, v7

    :goto_a
    if-ge v4, v9, :cond_30

    aget-object v10, v7, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2e

    goto :goto_b

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_2f
    :goto_b
    const/4 v8, 0x1

    nop

    :cond_30
    if-nez v8, :cond_31

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v0}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    :cond_31
    const-string v4, "com.samsung.android.soundassistant"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_32

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$17700(Lcom/android/server/audio/AudioService;I)V

    :cond_32
    goto/16 :goto_e

    :cond_33
    const-string v0, "android.intent.action.TurnOff_MultiSound"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x76

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.setting.multisound"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "enabled"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_34
    const-string v0, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    goto/16 :goto_e

    :cond_35
    const-string v0, "android.intent.action.Headup_Notification_Close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    goto/16 :goto_e

    :cond_36
    const-string v0, "android.intent.action.Headup_Notification_ChangeDevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->getPriorityDevice(I)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    goto/16 :goto_e

    :cond_37
    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "persona_id"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v5

    if-eq v5, v9, :cond_3a

    if-eq v5, v7, :cond_3a

    const/4 v7, 0x4

    if-ne v5, v7, :cond_38

    goto :goto_c

    :cond_38
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; userIdForCurrentAudioFocus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_39

    if-ne v0, v4, :cond_39

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-nez v7, :cond_39

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x71

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    if-eq v4, v6, :cond_39

    if-eq v4, v0, :cond_39

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/audio/MediaFocusControl;->notifyOtherTopOfAudioFocusStack()V

    :cond_39
    goto/16 :goto_e

    :cond_3a
    :goto_c
    return-void

    :cond_3b
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "reason"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_3c

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v4

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x71

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_d

    :pswitch_0
    return-void

    :cond_3c
    :goto_d
    goto/16 :goto_e

    :cond_3d
    const-string v0, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :try_start_3
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mono"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$17902(Lcom/android/server/audio/AudioService;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    nop

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17900(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$18000(Lcom/android/server/audio/AudioService;I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18100(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AudioSettingsHelper;

    move-result-object v0

    const-string/jumbo v4, "mono_audio_db"

    invoke-virtual {v0, v4}, Lcom/samsung/android/audio/AudioSettingsHelper;->removeValue(Ljava/lang/String;)I

    goto :goto_e

    :catch_3
    move-exception v0

    const-string v4, "AudioService"

    const-string v5, "Exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3e
    const-string/jumbo v0, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "AudioService"

    const-string v4, "SoundAppPolicy reload white list"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18200(Lcom/android/server/audio/AudioService;)V

    goto :goto_e

    :cond_3f
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    if-nez v0, :cond_41

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v4, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "AudioService"

    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$18500(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$18302(Lcom/android/server/audio/AudioService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v0, "AudioService"

    const-string v4, "SemGoodCatchManager is created"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_40
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    if-ne v0, v9, :cond_41

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_41
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

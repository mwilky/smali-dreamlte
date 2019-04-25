.class Lcom/android/server/display/WifiDisplayController$32;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1e

    const/4 v3, 0x0

    if-eq p1, v0, :cond_9

    const/16 v0, 0x28

    if-eq p1, v0, :cond_8

    const/16 v0, 0x32

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x46

    if-eq p1, v0, :cond_5

    const/16 v0, 0x50

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotify Error,  msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rotation"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_5

    :pswitch_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "UibcAvailable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UibcVersion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", UibcVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WifiDisplayController;->startUIBCVirtualSoftkey(Z)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/WFDUibcManager;->start()Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/WFDUibcManager;->setSinkUIBCVersion(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/WFDUibcManager;->stop()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto/16 :goto_5

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_2
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_5

    :pswitch_3
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_5

    :pswitch_4
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "renameAvailable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7502(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v1, "tcp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_GET_PROCESS_NAME_BY_PID pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, v0}, Lcom/android/server/display/WifiDisplayController;->access$7600(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_5

    :cond_5
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "minVol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7002(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "maxVol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7102(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v2, "curVol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7202(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isMute"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7302(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minVol"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maxVol"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "curVol"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isMute"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v2, 0x9

    invoke-static {v1, v2, v0}, Lcom/android/server/display/WifiDisplayController;->access$7400(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS, mDisplayMinVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayMaxVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayCurrentVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDisplayVolumeMuted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isSupportDisplayVolumeControl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$402(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_SUPPORT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_5

    :cond_8
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isSupportInitiatedMirroring"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$4602(Lcom/android/server/display/WifiDisplayController;Z)Z

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$4600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_9
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WEAK_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x103012b

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x1040b33

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10409da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;I)I

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-ne v5, v2, :cond_b

    const-string v5, "TCP"

    goto :goto_4

    :cond_b
    const-string v5, "UDP"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    if-ne v3, v2, :cond_c

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/server/display/WifiDisplayController;->access$6302(Lcom/android/server/display/WifiDisplayController;I)I

    const-string v1, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send command: current stream vol : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v4, "vol"

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    if-gt v0, v2, :cond_d

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$32;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)V

    :cond_d
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

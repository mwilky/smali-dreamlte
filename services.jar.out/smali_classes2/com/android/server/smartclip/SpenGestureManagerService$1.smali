.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v3, "online"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;->isInitialStickyBroadcast()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "penInsert"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "isBoot"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "penInsert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ".isBoot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v5, ""

    :goto_0
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v2, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v6

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/server/smartclip/BleSpenManager;->startService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onReceive : air action is disabled. Turn off the charging"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/smartclip/BleSpenManager;->disableCharging()V

    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3, v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    :cond_6
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3, v10, v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$402(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$600()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$402(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$800()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Start AirCommand. #1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v6, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "topComponent"

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    const-string v7, ""

    :goto_3
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "batteryStatus"

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "coverOpened"

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_9
    const-string v1, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v3

    :try_start_0
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v2

    :goto_4
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v3, "show"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto/16 :goto_5

    :cond_a
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.service.aircommand.remotespen.action.COMMON_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "action"

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isEnabled"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.android.service.aircommand"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :cond_b
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive : User switched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/smartclip/BleSpenManager;->startService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_c
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive : air action is disabled. Turn off the charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/BleSpenManager;->disableCharging()V

    goto :goto_5

    :cond_d
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive : SPen insertion state is not detected yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    return-void
.end method

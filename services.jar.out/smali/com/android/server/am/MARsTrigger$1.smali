.class Lcom/android/server/am/MARsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_b

    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "MARS_EXTRA"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "create"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string/jumbo v5, "update"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsDBManager;->onSMDBChanged(ZZ)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "MARS_REQUEST_POLICY_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsDBManager;->getMARsPolicyCondition(Z)V

    goto/16 :goto_2

    :cond_4
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->updateDataConnectionInfo()V

    goto/16 :goto_2

    :cond_5
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2, v3}, Lcom/android/server/am/MARsTrigger;->access$302(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$300(Lcom/android/server/am/MARsTrigger;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->setChargingMode(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v2}, Lcom/android/server/am/MARsHandler;->removeBgTriggerMsg()V

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    const-string v3, "charging"

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler;->sendResetFreecessStateToMainHandler(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2, v4}, Lcom/android/server/am/MARsTrigger;->access$302(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$300(Lcom/android/server/am/MARsTrigger;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->setChargingMode(Z)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v2, "sec.app.policy.UPDATE.ssrm_update_freecess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->sendSCPMChangedPkgMsgToDBHandler()V

    goto/16 :goto_2

    :cond_a
    const-string v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->sendVerifyForcedAppStandby()V

    goto/16 :goto_2

    :cond_b
    :goto_0
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-string v3, "SCR on"

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addSystemInfoToHistory(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-string v4, "CarMode"

    invoke-virtual {v3, v4}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_d
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v2}, Lcom/android/server/am/MARsHandler;->RemoveFreecessRepeatMsg()V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    :goto_2
    return-void
.end method

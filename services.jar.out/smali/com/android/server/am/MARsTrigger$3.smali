.class Lcom/android/server/am/MARsTrigger$3;
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

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3, v0}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "POLICY_NAME"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3, v2}, Lcom/android/server/am/MARsTrigger;->access$700(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I

    move-result v3

    const-string v4, "PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v5, v5, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v5, v4, v3, v6, v7}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    :cond_2
    goto/16 :goto_2

    :cond_3
    const-string v1, "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$800(Lcom/android/server/am/MARsTrigger;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendAREsMemoryNotEnoughMsgToMainHandler(IZ)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "ACTION_MARS_UPDATE_ARES_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "coolTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setAREsCoolTimeForSluggishAging(I)V

    :cond_5
    const-string/jumbo v3, "lastUsedTime"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->setUnusedAREsTimeForSluggishAging(I)V

    :cond_6
    :try_start_0
    const-string/jumbo v4, "sys.config.mars_ares_setting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MARsTrigger"

    const-string/jumbo v6, "init(), we cannot set system property"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    goto :goto_2

    :cond_8
    const-string v1, "FIRST_ALARM_FREECESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v1}, Lcom/android/server/am/MARsTrigger;->access$300(Lcom/android/server/am/MARsTrigger;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3, v0}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v1}, Lcom/android/server/am/MARsHandler;->sendFreecessRepeatMsgToMainHandler()V

    goto :goto_2

    :cond_9
    const-string v1, "PRELOAD_POLICY_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->RESPRELOAD_ENABLE:Z

    if-eqz v1, :cond_b

    const-string v1, "MARsTrigger"

    const-string/jumbo v2, "preload  begin..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->preloadHotProcess()V

    goto :goto_2

    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v3, v0}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    :cond_b
    :goto_2
    return-void
.end method

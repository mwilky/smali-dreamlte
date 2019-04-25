.class Lcom/android/server/net/NetworkPolicyManagerService$22;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VZW-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v2, "ATT"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v2, "TMO"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PRECISE_CALL_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "activevideo"

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v5, "epdg"

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5802(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VideoCallBroadcastReceiver - hasVideoCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hasActiveVideoCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mHasEpdgCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5800(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5900(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    if-eq v4, v2, :cond_3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5902(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string v4, "NetworkPolicy"

    const-string v5, "Video call start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5902(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$6002(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$6102(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string v4, "NetworkPolicy"

    const-string v5, "Video call end."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    :cond_3
    :goto_0
    return-void
.end method

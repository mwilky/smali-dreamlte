.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getCaptivePortalMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11000

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    nop

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x11003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v2, "%s from unknown NetworkAgent"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1200(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x81008

    if-eq v2, v3, :cond_4

    const v1, 0x8100d

    if-eq v2, v1, :cond_3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/LinkProperties;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has CS-managed capability."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v2, :cond_5

    const-string v2, "ERROR: already-connected network explicitly selected."

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean v1, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    nop

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const v3, 0x82002

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v3, :cond_10

    const v3, 0x8200a

    if-eq v0, v3, :cond_7

    const v3, 0x8200e

    if-eq v0, v3, :cond_5

    const v3, 0x82014

    if-eq v0, v3, :cond_0

    return v5

    :cond_0
    const-string v0, "NetworkMonitor.CMD_ACCEPT_UNVALIDATED_WIFI network"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "netId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] was already disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->setToDefaultNetwork(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->setToDefaultNetwork(Z)V

    :goto_1
    iget-object v5, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v0, v4}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    iget-object v5, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v3, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-static {v3, v0, v4}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V

    goto/16 :goto_7

    :cond_7
    iget v0, v2, Landroid/os/Message;->arg2:I

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v3

    iget v7, v2, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    move v14, v7

    iget v7, v2, Landroid/os/Message;->arg1:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    move v5, v6

    nop

    :cond_9
    iget-object v7, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7, v0}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v13

    if-eqz v13, :cond_b

    iget-boolean v7, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v3, v7, :cond_b

    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    iput-boolean v3, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    iget-boolean v8, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v8, v3

    iput-boolean v8, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    iget-boolean v8, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v8, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v8

    if-ne v4, v8, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Avoiding captive portal network: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    iget-object v4, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x8100f

    invoke-virtual {v4, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, v13}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    :cond_a
    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v4, v7, v13, v8}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    :cond_b
    if-nez v3, :cond_c

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto/16 :goto_7

    :cond_c
    if-nez v13, :cond_d

    const-string v4, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    iget-object v4, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v4, v4, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v4, :cond_19

    if-eqz v14, :cond_e

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v15

    add-int/lit8 v16, v0, 0x64

    sget-object v17, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/16 v19, 0x0

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v4

    check-cast v20, Landroid/app/PendingIntent;

    const/16 v21, 0x1

    move-object/from16 v18, v13

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotificationHun(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_7

    :cond_e
    if-eqz v5, :cond_f

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v7

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v11, 0x0

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    move v8, v0

    move-object v10, v13

    move-object v15, v13

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotificationUpdate(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_7

    :cond_f
    move-object v15, v13

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v7

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v11, 0x0

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Landroid/app/PendingIntent;

    const/4 v13, 0x0

    move v8, v0

    move-object v10, v15

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_7

    :cond_10
    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v3, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_7

    :cond_11
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_12

    move v3, v6

    goto :goto_3

    :cond_12
    move v3, v5

    :goto_3
    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    iget-object v8, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v8

    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_13

    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    goto :goto_4

    :cond_13
    const-string v9, ""

    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " with redirect to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_14
    const-string v10, ""

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " validation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_15

    const-string/jumbo v12, "passed"

    goto :goto_6

    :cond_15
    const-string/jumbo v12, "failed"

    :goto_6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    iget-boolean v10, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v3, v10, :cond_17

    if-eqz v8, :cond_16

    iget-object v10, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    :cond_16
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v10

    iput-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    iget-boolean v11, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v11, v3

    iput-boolean v11, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    iget-object v11, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v11, v10, v0, v12}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v11

    if-eq v10, v11, :cond_17

    iget-object v11, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v11, v0}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    :cond_17
    iget-object v10, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v0}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v11, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v12, 0x81007

    if-eqz v3, :cond_18

    move v4, v6

    nop

    :cond_18
    invoke-virtual {v11, v12, v4, v5, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    if-eqz v7, :cond_19

    iget-boolean v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v4, :cond_19

    iget-object v4, v1, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, v0}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    :cond_19
    :goto_7
    return v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

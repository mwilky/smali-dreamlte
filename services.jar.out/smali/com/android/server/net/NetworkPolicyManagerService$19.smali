.class Lcom/android/server/net/NetworkPolicyManagerService$19;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return v2

    :sswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4500(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_1
    :goto_1
    return v2

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    return v2

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    monitor-exit v3

    return v2

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4600(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;I)V

    return v2

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    return v2

    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4200(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    return v2

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    nop

    :goto_2
    if-ge v1, v5, :cond_5

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    :sswitch_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    return v2

    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    nop

    :goto_3
    if-ge v1, v5, :cond_6

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_7
    return v2

    :sswitch_a
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    return v2

    :sswitch_b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    return v2

    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v3, v0

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    return v2

    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    nop

    :goto_5
    if-ge v1, v3, :cond_9

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v2

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    :cond_a
    monitor-exit v3

    return v2

    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    nop

    :goto_6
    if-ge v1, v3, :cond_b

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    :sswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    nop

    :goto_7
    if-ge v1, v4, :cond_c

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x5 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xd -> :sswitch_9
        0xf -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x33 -> :sswitch_4
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_0
    .end sparse-switch
.end method

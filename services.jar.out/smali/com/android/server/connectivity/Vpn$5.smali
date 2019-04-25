.class Lcom/android/server/connectivity/Vpn$5;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3}, Landroid/net/UidRange;->getStartUser()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1402(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v3, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1102(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1002(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

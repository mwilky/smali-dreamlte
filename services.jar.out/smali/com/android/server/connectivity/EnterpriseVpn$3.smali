.class Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$200(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "knoxEnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->clearConnection()V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    const-string/jumbo v3, "disconnect per-app vpn is getting called from enterprisevpn"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v5}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v6}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/net/IConnectivityManager;->disconnectPerAppVpn(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1202(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at  interfaceRemoved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "knoxEnterpriseVpn"

    const-string/jumbo v3, "disconnect non-knox vpn is getting called from enterprisevpn"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->disconnectSystemVpn(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1202(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v2, "knoxEnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at  interfaceRemoved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

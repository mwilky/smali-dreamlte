.class Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox Proxy Agent started : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$100(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v3, "onServiceConnected: Unable to find Knox Proxy Agent!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1, v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v1, v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox Proxy Agent disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1, v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$400(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

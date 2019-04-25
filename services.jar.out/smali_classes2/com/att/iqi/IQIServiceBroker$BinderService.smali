.class Lcom/att/iqi/IQIServiceBroker$BinderService;
.super Lcom/att/iqi/IIQIBroker$Stub;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method private constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Lcom/att/iqi/IIQIBroker$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBroker"

    const-string v2, "getTimestamp failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IQIServiceBroker"

    const-string/jumbo v4, "registerServiceChangedCallback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IQIServiceBroker"

    const-string v2, "Call service changed callback now"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1600(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "IQIServiceBroker"

    const-string/jumbo v3, "notifyServiceState failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "shouldSubmitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "submitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

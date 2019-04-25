.class Lcom/att/iqi/IQIServiceBroker$6;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IQIServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation service connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binder service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2, p2}, Lcom/att/iqi/IQIServiceBroker;->access$1700(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1602(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1800(Lcom/att/iqi/IQIServiceBroker;Z)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/att/iqi/IQIServiceBroker$6$1;

    invoke-direct {v2, p0}, Lcom/att/iqi/IQIServiceBroker$6$1;-><init>(Lcom/att/iqi/IQIServiceBroker$6;)V

    invoke-interface {p2, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "IQIServiceBroker"

    const-string v4, "Exception while linking IBinder to death"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v2, v1}, Lcom/att/iqi/IQIServiceBroker;->access$1902(Lcom/att/iqi/IQIServiceBroker;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IQIServiceBroker"

    const-string v1, "Implementation service unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1800(Lcom/att/iqi/IQIServiceBroker;Z)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->access$1602(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1902(Lcom/att/iqi/IQIServiceBroker;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

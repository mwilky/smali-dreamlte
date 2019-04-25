.class Lcom/android/server/LocationManagerService$10;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeMinorSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Z)Z

    const-string v0, "LocationManagerService"

    const-string v1, "Minor session starts."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v4, "network"

    iget-object v5, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)I

    move-result v5

    invoke-static {v3, v4, v0, v5}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Ljava/lang/String;II)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->access$1602(Lcom/android/server/LocationManagerService;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/location/LocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$CiqLocationListener;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LocationManagerService"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v2

    const-wide/32 v3, 0xe290

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LocationManagerService"

    const-string v2, "Handler has not created yet "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LocationManagerService"

    const-string v2, "User disabled Network Location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->sendEmptyCIQDataForNonGPSProvider(B)V

    :cond_3
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$10;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LocationManagerService"

    const-string v1, "Minor session is already running. Ignore this query."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

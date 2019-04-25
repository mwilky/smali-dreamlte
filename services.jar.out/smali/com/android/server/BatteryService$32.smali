.class Lcom/android/server/BatteryService$32;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    move-wide v0, v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4700(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/max_temp"

    iget-object v5, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

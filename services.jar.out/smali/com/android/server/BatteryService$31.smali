.class Lcom/android/server/BatteryService$31;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$ExtraHealthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$5900(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v3, v7

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    sub-long v5, v7, v3

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@[BatteryInfo] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v9}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7, v3, v4}, Lcom/android/server/BatteryService;->access$6102(Lcom/android/server/BatteryService;J)J

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4700(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {v0, v7, v8}, Lcom/android/server/BatteryService;->access$5202(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

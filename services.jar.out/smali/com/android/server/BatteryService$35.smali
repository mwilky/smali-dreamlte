.class Lcom/android/server/BatteryService$35;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4700(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long v7, v1, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "12 hours cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$6508(Lcom/android/server/BatteryService;)J

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$6500(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x4650

    add-long/2addr v1, v5

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    iget-object v5, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long v3, v1, v3

    invoke-static {v5, v6, v3, v4}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "monthly cycle"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->access$6502(Lcom/android/server/BatteryService;J)J

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6600(Lcom/android/server/BatteryService;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

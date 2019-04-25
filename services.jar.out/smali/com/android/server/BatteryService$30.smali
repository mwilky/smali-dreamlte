.class Lcom/android/server/BatteryService$30;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
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

    iput-object p1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4700(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$4802(Lcom/android/server/BatteryService;J)J

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    const/16 v4, 0x64

    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$5100(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$5100(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService;->access$5202(Lcom/android/server/BatteryService;J)J

    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v5, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5600(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$5502(Lcom/android/server/BatteryService;J)J

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5800(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

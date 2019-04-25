.class Lcom/android/server/power/PowerManagerService$20;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v8

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v9, "PowerManagerService"

    const-string v10, "WirelessChargerSContextListener : Move"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v9, v9, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v9, :cond_1

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$18700(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "PowerManagerService"

    const-string v10, "SContextListener : Unregister SContextListener"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v9, v9, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->access$18800(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, v6, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$18900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v9

    sub-long v9, v4, v9

    const-wide/16 v11, 0x12c

    cmp-long v0, v9, v11

    if-gez v0, :cond_0

    const-string v0, "PowerManagerService"

    const-string v9, "WirelessChargerSContextListener : received move lately"

    invoke-static {v0, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v9, 0x0

    invoke-static {v0, v9, v10}, Lcom/android/server/power/PowerManagerService;->access$18902(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v9, 0x40

    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$2176(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v9, " powered change"

    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$10102(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v9, 0xb

    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$15102(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const-string v13, "android.server.power:POWER"

    const/16 v14, 0x3e8

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3e8

    invoke-static/range {v10 .. v16}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)V

    :cond_0
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    const-string v6, "PowerManagerService"

    const-string v9, "WirelessChargerSContextListener : No Move"

    invoke-static {v6, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$20;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, v6, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

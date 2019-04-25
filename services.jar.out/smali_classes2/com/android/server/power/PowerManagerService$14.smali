.class Lcom/android/server/power/PowerManagerService$14;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PowerManagerService.java"


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

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGearVrStateChanged state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x40

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x2000

    if-eq p1, v2, :cond_3

    const/16 v2, 0x80

    const/4 v6, 0x0

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7702(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7602(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2176(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrTetheredDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_2

    :pswitch_1
    if-ne p2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7602(Lcom/android/server/power/PowerManagerService;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7702(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2176(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked for TVR mIsGearVrDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrTetheredDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_2

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7802(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v6}, Lcom/android/server/power/PowerManagerService;->access$7902(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2176(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrPersistentVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_2

    :cond_3
    if-ne p2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7802(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$7902(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$2176(Lcom/android/server/power/PowerManagerService;I)I

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerStateLocked mIsGearVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGearVrPersistentVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$7800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)V

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

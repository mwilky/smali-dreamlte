.class Lcom/android/server/BatteryService$4$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$4;

.field final synthetic val$wirelssPowerSharingEnable:Z


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$4;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$4$1;->val$wirelssPowerSharingEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$4;

    iget-object v0, v0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$4$1;->val$wirelssPowerSharingEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set wirelssPowerSharingEnable as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$4$1;->val$wirelssPowerSharingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail to disable wirelssPowerSharingEnable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

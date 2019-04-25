.class Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$statusIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$17;->val$statusIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$17;->val$statusIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/BatteryService;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$17;->val$statusIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.homemode"

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->access$4000(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_COMMON_ConfigImplicitBroadcasts"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$17;->val$statusIntent:Landroid/content/Intent;

    const-string v2, "com.verizon.mips.services"

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->access$4000(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

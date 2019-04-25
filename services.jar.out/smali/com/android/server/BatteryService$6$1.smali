.class Lcom/android/server/BatteryService$6$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$6;

.field final synthetic val$audiomode:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$6;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    iput p2, p0, Lcom/android/server/BatteryService$6$1;->val$audiomode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/android/server/BatteryService$6$1;->val$audiomode:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call start"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    iget-object v0, v0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1, v1}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService$6$1;->val$audiomode:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call end"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    iget-object v0, v0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;II)V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/android/server/BatteryService$5$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$5;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$5$2;->this$1:Lcom/android/server/BatteryService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dex Exit"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$5$2;->this$1:Lcom/android/server/BatteryService$5;

    iget-object v0, v0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;II)V

    return-void
.end method

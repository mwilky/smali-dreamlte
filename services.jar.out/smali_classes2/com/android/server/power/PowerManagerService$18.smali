.class Lcom/android/server/power/PowerManagerService$18;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$17800(Lcom/android/server/power/PowerManagerService;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$17914(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/32 v2, 0x1b7740

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$17900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$17902(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$17900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

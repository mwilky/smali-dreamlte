.class Lcom/android/server/VibratorService$VibratorThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorThread;->this$0:Lcom/android/server/VibratorService;

    const-string p1, "VibratorService"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorThread;->this$0:Lcom/android/server/VibratorService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$VibratorThread;->this$0:Lcom/android/server/VibratorService;

    new-instance v2, Lcom/android/server/VibratorService$VibratorHandler;

    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/VibratorService$VibratorHandler;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$6602(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibratorHandler;)Lcom/android/server/VibratorService$VibratorHandler;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibratorThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

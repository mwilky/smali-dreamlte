.class Lcom/android/server/lights/LightsService$1;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v1, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$802(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2602(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2700(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x11200df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$002(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x1120026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->access$2802(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$2800(Lcom/android/server/lights/LightsService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/sys/class/sec/led/led_lowpower"

    invoke-static {v3}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3, v2}, Lcom/android/server/lights/LightsService;->access$2902(Lcom/android/server/lights/LightsService;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2bc

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$902(Lcom/android/server/lights/LightsService;I)I

    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SvcLED] SUPPORT_LED_INDICATOR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mUseSoftwareAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$2800(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mDelayForcedSvcLEDTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  mUsePatternLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

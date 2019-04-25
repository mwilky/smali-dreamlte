.class final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .locals 4

    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5700(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5600(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5700(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5600(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn post"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$5800()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurningOn post - add delay +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$5800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5700(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5600(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$5800()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1, p1}, Lcom/android/server/aod/AODManagerService;->access$202(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5900(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

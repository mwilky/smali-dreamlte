.class Lcom/android/server/aod/AODSCoverController$2;
.super Ljava/lang/Object;
.source "AODSCoverController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODSCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController$2;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->access$600()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$2;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$100(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->access$600()Ljava/util/Queue;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->access$600()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->access$600()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

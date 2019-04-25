.class Lcom/android/server/audio/AudioService$SensorThread;
.super Ljava/lang/Thread;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThread"
.end annotation


# static fields
.field private static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"


# instance fields
.field private mFlatMotionSensorEnabled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mbClosed:Z

.field private mbListenerStarted:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    const-string v0, "SensorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "scontext"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$16500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$18900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "FlatMotion=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->access$18902(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v3, "FlatMotion=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16500(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    const-string v0, "GAMEVOIP"

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$18800(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProximitySensorClosed=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    goto :goto_0

    :cond_0
    const-string v0, "ProximitySensorClosed=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public declared-synchronized startSensor()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSensor()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string v0, "FlatMotion=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

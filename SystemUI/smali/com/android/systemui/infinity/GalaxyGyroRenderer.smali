.class public abstract Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field combackAnim:Landroid/animation/ValueAnimator;

.field combackRunnable:Ljava/lang/Runnable;

.field context:Landroid/content/Context;

.field private currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

.field gyroData:[F

.field handler:Landroid/os/Handler;

.field isAnimating:Z

.field isFirst:Z

.field isPendingAnimation:Z

.field private mSensor:Landroid/hardware/Sensor;

.field public mSensorListening:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    new-instance v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public beginSensing()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    const-string v1, "GyroRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginSensing currentMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v2, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const-string v0, "GyroRender"

    const-string v1, "beginSensing SENSOR_DELAY_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v2, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const-string v0, "GyroRender"

    const-string v1, "beginSensing SENSOR_DELAY_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected abstract onChangeGyroData([F)V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const-string v0, "GyroRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChanged event.sensor.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    const/4 v4, 0x0

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aput v4, v0, v1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v4, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    const/high16 v5, 0x41200000    # 10.0f

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v2

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v2

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    aget v4, v0, v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, v0, v1

    :cond_4
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onChangeGyroData([F)V

    :cond_7
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->context:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    return-void
.end method

.method public pauseSensing()V
    .locals 2

    const-string v0, "GyroRender"

    const-string/jumbo v1, "pauseSensing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "GyroRender"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    :cond_0
    return-void
.end method

.method public setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    :cond_1
    return-void
.end method

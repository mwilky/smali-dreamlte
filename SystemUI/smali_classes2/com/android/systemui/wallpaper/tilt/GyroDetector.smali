.class public Lcom/android/systemui/wallpaper/tilt/GyroDetector;
.super Ljava/lang/Object;
.source "GyroDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;,
        Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

.field private mResumed:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->initSensor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    return-object v0
.end method

.method private initSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;-><init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;Lcom/android/systemui/wallpaper/tilt/GyroDetector$1;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->TAG:Ljava/lang/String;

    const-string v1, "Sensor paused."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->TAG:Ljava/lang/String;

    const-string v1, "Sensor resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GyroDetector{mResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

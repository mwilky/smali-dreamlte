.class public Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;
.super Ljava/lang/Object;
.source "ScreenChecker.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenChecker"


# instance fields
.field private mLastSensorValue:Z

.field private mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

.field private mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const-string v1, "ScreenChecker"

    const-string v2, "The Sensor is not supported in device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "ScreenChecker"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    const-string v1, "ScreenChecker"

    const-string/jumbo v2, "onSemContextChanged: type is not 22"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v1

    const-string v2, "ScreenChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSemContextChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastSensorValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;->onChanged(Z)V

    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;->onChanged(Z)V

    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    goto :goto_0

    :cond_3
    const-string v2, "ScreenChecker"

    const-string/jumbo v3, "onSemContextChanged, listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    nop

    :cond_5
    :goto_0
    return-void
.end method

.method public run(Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_0

    const-string v0, "ScreenChecker"

    const-string v1, "The sensor is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz v0, :cond_1

    const-string v0, "ScreenChecker"

    const-string/jumbo v1, "run: Listener is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_1
    const-string v0, "ScreenChecker"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mCommonUse:Z

.field private mForceStop:Z

.field private final mFrequency:I

.field private final mMagnitude:I

.field private final mUid:I

.field private final mUsageHint:I

.field private final mVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iget v0, p2, Lcom/android/server/VibratorService$Vibration;->uid:I

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v0, p2, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    iget v1, p2, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iput-object p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iput p6, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iput p7, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delay(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    :cond_2
    :goto_1
    return-void
.end method

.method private delayLocked(J)J
    .locals 11

    const-string v0, "delayLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-wide v3, p1

    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v7, p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v3, v7, v9

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    :goto_1
    sub-long v5, p1, v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v5

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_2
    nop

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v5
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6

    move v0, p3

    const-wide/16 v1, 0x0

    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    array-length v0, p1

    if-lt v3, v0, :cond_2

    if-ltz p4, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_0
    if-ne v0, p3, :cond_0

    const-wide/16 v3, 0x3e8

    return-wide v3

    :cond_3
    :goto_1
    return-wide v1
.end method

.method private playCommonPattern()V
    .locals 29

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    array-length v2, v0

    iget-object v3, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget v8, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget v9, v4, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move v6, v4

    move-wide v4, v13

    :goto_0
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_7

    if-ge v6, v2, :cond_0

    add-int/lit8 v7, v6, 0x1

    aget-wide v10, v0, v6

    add-long/2addr v4, v10

    move v6, v7

    :cond_0
    invoke-direct {v1, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v7, :cond_1

    goto/16 :goto_2

    :cond_1
    if-ge v6, v2, :cond_5

    add-int/lit8 v15, v6, 0x1

    aget-wide v6, v0, v6

    move-wide/from16 v25, v6

    cmp-long v4, v25, v13

    if-lez v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide/from16 v27, v4

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v12

    move-wide/from16 v6, v25

    invoke-static/range {v5 .. v12}, Lcom/android/server/VibratorService;->access$2900(Lcom/android/server/VibratorService;JIIIII)V

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v21

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    move-object/from16 v16, v4

    move-wide/from16 v17, v25

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v16 .. v22}, Lcom/android/server/VibratorService;->access$3000(Lcom/android/server/VibratorService;JIIII)V

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v21

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v23

    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v24

    move-object/from16 v16, v4

    move-wide/from16 v17, v25

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v16 .. v24}, Lcom/android/server/VibratorService;->access$3100(Lcom/android/server/VibratorService;JII[IIII)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v27

    sub-long v6, v25, v4

    move-wide v4, v6

    move v6, v15

    goto/16 :goto_0

    :cond_4
    move v6, v15

    move-wide/from16 v4, v25

    goto/16 :goto_0

    :cond_5
    if-gez v3, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()V
    .locals 23

    move-object/from16 v1, p0

    const-string/jumbo v0, "playWaveform"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    array-length v5, v0

    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_0
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_6

    if-ge v7, v5, :cond_4

    aget v12, v4, v7

    add-int/lit8 v21, v7, 0x1

    aget-wide v13, v0, v7

    cmp-long v7, v13, v8

    if-gtz v7, :cond_0

    nop

    move/from16 v7, v21

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_2

    cmp-long v7, v10, v8

    if-gtz v7, :cond_1

    add-int/lit8 v7, v21, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v15

    move-wide v8, v13

    move-wide v14, v15

    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iget v11, v1, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iget v2, v1, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v2

    invoke-static/range {v13 .. v20}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;JIIIII)V

    goto :goto_2

    :cond_1
    move-wide v8, v13

    iget-object v2, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v12}, Lcom/android/server/VibratorService;->access$2800(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    :cond_2
    move-wide v8, v13

    :goto_1
    move-wide v14, v10

    :goto_2
    invoke-direct {v1, v8, v9}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v2

    if-eqz v12, :cond_3

    sub-long/2addr v14, v2

    :cond_3
    move-wide v10, v14

    move/from16 v7, v21

    goto :goto_3

    :cond_4
    if-gez v6, :cond_5

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_3
    const-wide/32 v2, 0x800000

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_6
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .locals 3

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService$VibrateThread;->playCommonPattern()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

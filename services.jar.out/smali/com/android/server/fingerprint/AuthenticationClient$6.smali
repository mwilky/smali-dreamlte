.class Lcom/android/server/fingerprint/AuthenticationClient$6;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

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

    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorEventListener:onSensorChanged called = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v2, 0x10039

    if-ne v0, v2, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1200(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finger Icon Trigger : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$6$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$6$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$6;)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$702(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_4
    :goto_0
    return-void
.end method

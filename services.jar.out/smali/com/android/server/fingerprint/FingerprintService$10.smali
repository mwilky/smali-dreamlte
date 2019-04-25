.class Lcom/android/server/fingerprint/FingerprintService$10;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, v15

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public handleFailedAttempt()I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$10;->semHasPrivilegedAttr(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v4

    iget v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v4

    iget v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;I)V

    return v3

    :cond_3
    return v2
.end method

.method public notifyUserActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService$10;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "AuthenticationClient : onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->observe(Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService$10;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "AuthenticationClient : onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Could not unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->observe(Z)V

    :cond_1
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public semDozeControl(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    move-result v0

    return v0
.end method

.method public semHLPMControl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;Z)V

    return-void
.end method

.method public semHandleInternalError(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    return-void
.end method

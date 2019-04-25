.class final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v8, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$5200(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public addLogText(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4600(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1800(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AODManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p2}, Lcom/android/server/aod/AODManagerService;->access$5500(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getActiveImageInfo()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSelfIconImageInfo()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$3400(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAODState()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isSViewCoverBrightnessHigh()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSCoverController;->isSViewCoverBrightnessHigh()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public readyToScreenTurningOn()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$4700(Lcom/android/server/aod/AODManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerAODDozeCallback(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5000(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerAODListener(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4800(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseDoze(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5300(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/aod/AODManagerService;->access$5400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestExpandNotificationPanel(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4000(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveImage(I[BLjava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/aod/AODManagerService;->access$3200(Lcom/android/server/aod/AODManagerService;I[BLjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setAnalogClockInfo(IIII)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;IIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setAnalogClockInfoV4(IIIIII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$4200(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCurrentTime(IIIIII)I
    .locals 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$2700(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
    .locals 26

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move/from16 v23, p18

    move/from16 v24, p19

    move/from16 v25, p20

    invoke-static/range {v5 .. v25}, Lcom/android/server/aod/AODManagerService;->access$3100(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIIIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    invoke-static/range {v5 .. v21}, Lcom/android/server/aod/AODManagerService;->access$4300(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLiveClockCommand(III[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$4500(Lcom/android/server/aod/AODManagerService;III[I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLiveClockImage(II[BLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$4400(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object/from16 v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    invoke-static/range {v5 .. v22}, Lcom/android/server/aod/AODManagerService;->access$2300(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLiveClockNeedle([B)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$2400(Lcom/android/server/aod/AODManagerService;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSelfGridInfo(IIIII)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->access$2900(Lcom/android/server/aod/AODManagerService;IIIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSelfIconInfo(IIIIII)I
    .locals 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/android/server/aod/AODManagerService;->access$2800(Lcom/android/server/aod/AODManagerService;IIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setSelfPartialHLPMScan(IIIIIIIII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, -0x1

    move v3, v0

    move-object v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-static/range {v5 .. v14}, Lcom/android/server/aod/AODManagerService;->access$4100(Lcom/android/server/aod/AODManagerService;IIIIIIIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public turnOffSelfMove()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$2600(Lcom/android/server/aod/AODManagerService;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public turnOnSelfMove()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$2500(Lcom/android/server/aod/AODManagerService;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterAODDozeCallback(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$5100(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterAODListener(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4900(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v7, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$3900(Lcom/android/server/aod/AODManagerService;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "/sys/class/sec/tsp/input/enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/aod/AODManagerService;->access$3602(Lcom/android/server/aod/AODManagerService;Z)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/aod/AODManagerService;->access$3602(Lcom/android/server/aod/AODManagerService;Z)Z

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->access$3700(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

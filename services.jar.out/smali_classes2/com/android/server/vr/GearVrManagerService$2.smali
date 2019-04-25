.class Lcom/android/server/vr/GearVrManagerService$2;
.super Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .locals 1

    const-string v0, "acquireVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$2200(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$4700(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$2900(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getPowerLevelState()I
    .locals 1

    const-string v0, "getPowerLevelState"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$2700(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "getSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$2500(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "getThreadId"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3700(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getVrRecentsMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "getVrRecentsMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1300(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrSystemUiMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1400(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public isDock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string v1, "isPersistentVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "notifyDeviceEventChanged"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$200(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "readSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "registerVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$300(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "releaseVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$2300(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "removeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 1

    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$2600(Lcom/android/server/vr/GearVrManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setHomeKeyBlocked"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3300(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setOverlayRestriction"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3400(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPermissions"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$4100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public setPersistentVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPersistentVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$1800(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setReadyForVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setReadyForVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3500(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemMouseControlType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4400(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseShowMouseEnabled"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4500(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$2400(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThreadAffinity(I[I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadAffinity"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$3600(Lcom/android/server/vr/GearVrManagerService;I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadGroup"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->access$4200(Lcom/android/server/vr/GearVrManagerService;II)Z

    move-result v0

    return v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 1

    const-string/jumbo v0, "setThreadSchedFifo"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$2800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setThreadScheduler(III)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadScheduler"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$4300(Lcom/android/server/vr/GearVrManagerService;III)Z

    move-result v0

    return v0
.end method

.method public setVr2dSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVr2dSurface"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$4600(Lcom/android/server/vr/GearVrManagerService;Landroid/view/Surface;)V

    return-void
.end method

.method public setVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$3200(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "unregisterVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$400(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "writeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$3900(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.class final Lcom/android/server/vr/GearVrManagerService$LocalService;
.super Lcom/samsung/android/vr/GearVrManagerInternal;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getVrActivityType(Landroid/content/pm/ActivityInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$1600(Lcom/android/server/vr/GearVrManagerService;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public getVrRecentsMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1300(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrSystemUiMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1400(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public hasHmtFeature()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1500(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method public isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    return v0
.end method

.method public isGearVrReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v0

    return v0
.end method

.method public isHomeKeyBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1200(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method public isOverlayRestrictionWindow(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->access$1700(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isPersistentVrMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method public isStartActivityAllowed(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerService;->access$700(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrServiceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$200(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->access$800(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setScreenState(Z)V

    return-void
.end method

.method public readyForVrMode(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerService;->access$600(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    return v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$300(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public setPersistentVrMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$1800(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setVr2dSurfaceCallback(Lcom/samsung/android/vr/IGearVrSurfaceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$500(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrSurfaceCallback;)V

    return-void
.end method

.method public startVrHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method

.method public startVrRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$400(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.class Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePreconditionChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method private isHdmiSettingReady(Lcom/android/server/desktopmode/State;Z)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHdmiSettingReady(isModeChangeProcess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), hdmiSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public cancelOngoingNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void
.end method

.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3000(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isHdmiSettingReady(Lcom/android/server/desktopmode/State;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/BlockerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowed(showToast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get blocking message from blocker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", checkDesktopDock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;Z)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->updateOngoingNotification()V

    const/16 v2, 0x66

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2300(Lcom/android/server/desktopmode/DesktopModeService;)V

    :goto_0
    return v3

    :cond_5
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3700(Lcom/android/server/desktopmode/DesktopModeService;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return v3

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v1
.end method

.method public declared-synchronized updateOngoingNotification()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOngoingNotification(), state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hdmiSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    const/16 v3, 0xc9

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3300(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3000(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    const/4 v6, -0x1

    if-nez v2, :cond_3

    if-eq v1, v6, :cond_d

    :cond_3
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3600(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x3

    const/16 v8, 0xcd

    if-eq v2, v7, :cond_9

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v1, v6, :cond_6

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v8}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xce

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_9
    :goto_0
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v8}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_a
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xcf

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v3, 0xca

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3800(Lcom/android/server/desktopmode/DesktopModeService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_1
    monitor-exit p0

    return-void

    :cond_d
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

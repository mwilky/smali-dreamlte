.class Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;
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
    name = "TabletPreconditionChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method private isHdmiSettingReady(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3400(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHdmiSettingReady(isModeChangeProcess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), hdmiSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public cancelOngoingNotification()V
    .locals 0

    return-void
.end method

.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->isHdmiSettingReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

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
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V
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

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

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

    :cond_0
    return v1
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;Z)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDesktopMode(), enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isModeChangeLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2900(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->updateOngoingNotification()V

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4, v4}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v5

    const/16 v6, 0x65

    const/16 v7, 0x66

    const/4 v8, 0x4

    if-eqz v5, :cond_6

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$3200(Lcom/android/server/desktopmode/State;)Z

    move-result v5

    const/4 v9, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {v2, v8, v3, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v4

    new-instance v5, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-direct {v5, v9}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(I)V

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v9, v3, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {v2, v9, v3, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$4002(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)Lcom/android/server/desktopmode/ModeChanger;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$4100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v5, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v5, v9, :cond_5

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$4002(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)Lcom/android/server/desktopmode/ModeChanger;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$4100(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v8, v3, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v4, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v8, v3, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v8, v3, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    const/4 v0, 0x1

    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$4102(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return v0

    :cond_9
    :goto_1
    return v3
.end method

.method public updateOngoingNotification()V
    .locals 0

    return-void
.end method

.class Lcom/android/server/desktopmode/DesktopModeService$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification()V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1200(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    :cond_0
    return-void
.end method

.method onDockFastChargingStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification()V

    return-void
.end method

.method onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V
    .locals 7

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$600(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDockLowChargerConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-array v5, v5, [I

    aput v3, v5, v4

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$300(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-array v6, v5, [I

    aput v2, v6, v4

    invoke-static {v0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "dock_fastcharger_warning"

    invoke-static {v0, v2, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onDockLowChargerPowerChanged DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$300(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 7

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-array v3, v3, [I

    const/4 v4, 0x4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopDockConnectionChanged(Z)V

    :cond_1
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_2
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    const-string/jumbo v2, "hdmi_auto_enter"

    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    const/16 v4, 0x9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$000(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDockLowChargerConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "dock_fastcharger_warning"

    invoke-static {v0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onDisplayChanged DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$300(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$400(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :goto_0
    return-void
.end method

.method onLauncherPackageReplaced(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$800(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$1000(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$800(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method onOverheatStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1200(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method onPackageStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v1

    const-string/jumbo v2, "pogo_auto_enter"

    const-string/jumbo v3, "pogo_initial_connection_dialog_shown"

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$000(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method onWiredChargingChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

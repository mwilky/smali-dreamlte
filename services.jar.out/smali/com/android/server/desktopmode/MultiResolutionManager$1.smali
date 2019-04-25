.class Lcom/android/server/desktopmode/MultiResolutionManager$1;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resolution user setting is null."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

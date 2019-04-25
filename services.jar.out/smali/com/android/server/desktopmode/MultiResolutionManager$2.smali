.class Lcom/android/server/desktopmode/MultiResolutionManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
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
.method constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDualModeStopLoadingScreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$600(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$502(Lcom/android/server/desktopmode/MultiResolutionManager;Z)Z

    return-void
.end method

.method onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$500(Lcom/android/server/desktopmode/MultiResolutionManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$400(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$502(Lcom/android/server/desktopmode/MultiResolutionManager;Z)Z

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$502(Lcom/android/server/desktopmode/MultiResolutionManager;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$400(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method onSetDesktopModeInternal(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setForcedDisplayResolutionDensity(Z)I

    return-void
.end method

.class Lcom/android/server/desktopmode/CoverStateManager$3;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$700(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$702(Lcom/android/server/desktopmode/CoverStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$400(Lcom/android/server/desktopmode/CoverStateManager;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDualModeStartLoadingScreen(Z)V
    .locals 0

    return-void
.end method

.method onDualModeStopLoadingScreen(Z)V
    .locals 0

    return-void
.end method

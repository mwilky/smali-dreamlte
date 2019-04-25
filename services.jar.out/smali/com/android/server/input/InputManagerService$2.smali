.class Lcom/android/server/input/InputManagerService$2;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 8

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x14

    if-ne v0, v5, :cond_7

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v4, :cond_a

    :cond_0
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v5, 0x2

    if-eqz v0, :cond_2

    const-string v2, "InputManager"

    const-string/jumbo v6, "set STATE_LOADING_SCREEN_SHOWN enabled"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v6

    invoke-static {v6, v7, v5, v3}, Lcom/android/server/input/InputManagerService;->access$400(JII)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const/4 v5, -0x1

    invoke-static {v2, v3, v1, v5}, Lcom/android/server/input/InputManagerService;->access$400(JII)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$502(Lcom/android/server/input/InputManagerService;I)I

    goto :goto_1

    :cond_2
    const-string v6, "InputManager"

    const-string/jumbo v7, "set STATE_LOADING_SCREEN_SHOWN disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v6, v3}, Lcom/android/server/input/InputManagerService;->access$502(Lcom/android/server/input/InputManagerService;I)I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v6

    invoke-static {v6, v7, v5, v1}, Lcom/android/server/input/InputManagerService;->access$400(JII)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/input/InputManagerService;->access$400(JII)V

    :goto_1
    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v5}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getTouchpadSupportedFeatures()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    invoke-static {v1, v2, v0, v3, v6}, Lcom/android/server/input/InputManagerService;->access$600(JZII)V

    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set dexmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " displayType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dexFeature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->access$702(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->checkInputFeature()I

    move-result v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->updateFlowPointerIsOnDexSettings()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    :cond_6
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    goto :goto_5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v5, 0x32

    if-ne v0, v5, :cond_a

    const-string v0, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_CONFIG_CHANGE_FINISHED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v2, :cond_8

    move v0, v4

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v2, v1, :cond_9

    move v3, v4

    nop

    :cond_9
    or-int/2addr v0, v3

    invoke-static {v0}, Landroid/view/PointerIcon;->setDexMode(Z)V

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$1400(J)V

    :cond_a
    :goto_5
    return-void
.end method

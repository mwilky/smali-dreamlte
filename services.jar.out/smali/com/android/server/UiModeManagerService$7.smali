.class Lcom/android/server/UiModeManagerService$7;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, v1}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

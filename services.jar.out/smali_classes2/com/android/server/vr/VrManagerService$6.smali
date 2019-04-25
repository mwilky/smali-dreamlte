.class Lcom/android/server/vr/VrManagerService$6;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

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

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x80

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v3, v1, Lcom/android/server/vr/VrManagerService;->mGearVrDocked:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_UNDOCK"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mGearVrDocked:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_DOCK"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v3, v1, Lcom/android/server/vr/VrManagerService;->mGearVrEntered:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_VR_EXITED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mGearVrEntered:Z

    const-string v1, "VrManagerService"

    const-string v2, "GearVrManager.HMT_EVENT_VR_ENTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

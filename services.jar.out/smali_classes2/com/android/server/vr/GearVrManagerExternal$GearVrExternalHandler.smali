.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleNotifyVrActivityFocusChanged(Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrRecents()V

    goto :goto_1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartWaitActivity(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrHome()V

    goto :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$200(Lcom/android/server/vr/GearVrManagerExternal;II)V

    goto :goto_1

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleHmtEventChanged(II)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GearVrManagerExternal"

    const-string v2, "VRConnection timeout for VRService!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/att/iqi/DetailedAppReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailedAppReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/DetailedAppReceiver;-><init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/DetailedAppReceiver;


# direct methods
.method constructor <init>(Lcom/att/iqi/DetailedAppReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailedAppReceiver: intent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logw(Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ApplicationState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DetailedAppReceiver: Application State not found"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2722f273

    const/4 v5, 0x2

    if-eq v3, v4, :cond_7

    const v4, 0x4b8cc42

    if-eq v3, v4, :cond_6

    const v4, 0x526fd391

    if-eq v3, v4, :cond_5

    const v4, 0x7ab8ea3d

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "EXITED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "PID_EXITED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x3

    goto :goto_0

    :cond_6
    const-string v3, "START"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const-string v3, "PID_STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v5

    :cond_8
    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-static {v2}, Lcom/att/iqi/DetailedAppReceiver;->access$200(Lcom/att/iqi/DetailedAppReceiver;)Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p2}, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-static {v2}, Lcom/att/iqi/DetailedAppReceiver;->access$200(Lcom/att/iqi/DetailedAppReceiver;)Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-static {v2}, Lcom/att/iqi/DetailedAppReceiver;->access$200(Lcom/att/iqi/DetailedAppReceiver;)Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver$1;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-static {v2}, Lcom/att/iqi/DetailedAppReceiver;->access$200(Lcom/att/iqi/DetailedAppReceiver;)Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v5, p2}, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :goto_1
    invoke-static {v2, p2, v1}, Lcom/att/iqi/DetailedAppReceiver;->access$300(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

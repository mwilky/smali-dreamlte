.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "IdleState: enter"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "IdleState: enableBlockRules true"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "IdleState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IdleState ignore msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto/16 :goto_13

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "IdleState onConnect"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v1, 0x1

    goto/16 :goto_13

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in enableBlockRules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_13

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v3, 0x3f2

    invoke-static {v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    :goto_5
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    goto :goto_5

    :goto_6
    monitor-exit v0

    const/4 v1, 0x1

    goto/16 :goto_13

    :goto_7
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_5
    monitor-exit v0

    const/4 v1, 0x1

    goto/16 :goto_13

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_6
    goto :goto_8

    :catchall_4
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_8
    monitor-exit v0

    const/4 v1, 0x1

    goto/16 :goto_13

    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_7
    goto :goto_a

    :catchall_5
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_a
    monitor-exit v0

    const/4 v1, 0x1

    goto/16 :goto_13

    :goto_b
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c

    :cond_8
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_9
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    :goto_d
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_e

    :catchall_6
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    goto :goto_d

    :goto_e
    monitor-exit v0

    const/4 v1, 0x1

    goto/16 :goto_13

    :goto_f
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    throw v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v1

    :sswitch_7
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IdleState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_10

    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_b
    :goto_10
    goto :goto_11

    :catchall_8
    move-exception v1

    goto :goto_12

    :catch_5
    move-exception v1

    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableBlockRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_11
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    monitor-exit v0

    const/4 v1, 0x1

    goto :goto_13

    :goto_12
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v1

    :sswitch_8
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    monitor-exit v0

    const/4 v1, 0x1

    goto :goto_13

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v1

    :goto_13
    move v0, v1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_8
        0x3eb -> :sswitch_7
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_4
        0x3f0 -> :sswitch_3
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_1
        0x44d -> :sswitch_0
    .end sparse-switch
.end method

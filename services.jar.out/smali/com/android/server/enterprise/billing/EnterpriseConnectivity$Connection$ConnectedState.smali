.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: enter"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in enableBlockRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectedState ignore msg "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_1
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "ConnectedState: turn off connection"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v1, 0x3f2

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "ConnectedState: turn off connection"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in connected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    const/4 v2, 0x1

    goto/16 :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: turn off connection"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: turn off connection"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: turn off connection"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5802(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: ignore offload to mobile change"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    monitor-exit v0

    const/4 v2, 0x1

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState onDisconnect"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    nop

    :goto_3
    move v0, v2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

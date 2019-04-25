.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;
.super Ljava/lang/Thread;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainingStateMachine"
.end annotation


# instance fields
.field private connectingStateSleepTime:J

.field private idleStateSleepTime:J

.field private profileName:Ljava/lang/String;

.field private requiredState:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private threadStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->requiredState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->requiredState:I

    return-void
.end method

.method private startChainedConnection(Ljava/lang/String;J)V
    .locals 7

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChainingStateMachine: startChainedConnection is being called for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->sleep(J)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChainingStateMachine: The thread running time after delay is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChainingStateMachine: state of the profile after delay is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: currentTime after the thread has started is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x15f90

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: the profile is going to be delayed again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: time out has happened and going to exit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: the profile is going to be started after the delay and the result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    nop

    :cond_8
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at startChainedConnection API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public exit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChainingStateMachine: thread start time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KnoxVpnEngineService"

    const-string v2, "Error occured while ChainingStateMachine: The error code is 110"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChainingStateMachine: currentState of the profile is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V

    nop

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChainingStateMachine: thread stop time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at ChainingStateMachine API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

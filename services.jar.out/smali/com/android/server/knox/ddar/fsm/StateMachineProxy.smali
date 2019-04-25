.class public Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
.super Ljava/lang/Object;
.source "StateMachineProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.implements Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final GET_CURRENT_STATE:Ljava/lang/String; = "GET_CURRENT_STATE"

.field private static final GET_PREVIOUS_STATE:Ljava/lang/String; = "GET_PREVIOUS_STATE"

.field private static final KEY_DUAL_DAR_USER_ID:Ljava/lang/String; = "KEY_DUAL_DAR_USER_ID"

.field private static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final PROCESS_EVENT:Ljava/lang/String; = "PROCESS_EVENT"

.field private static final TAG:Ljava/lang/String; = "StateMachineProxy"

.field private static mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;


# instance fields
.field private context:Landroid/content/Context;

.field private stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->setInitialState(ILcom/samsung/android/knox/ddar/fsm/State;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->addStateChangeListener(Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
    .locals 2

    const-class v0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    :cond_0
    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->mInstance:Lcom/android/server/knox/ddar/fsm/StateMachineProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processEvent(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/fsm/Event;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/Event;

    move-result-object v0

    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->processEvent(Lcom/samsung/android/knox/ddar/fsm/Event;I)Z

    move-result v2

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x33660c2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    const v5, 0x52ce508a

    if-eq v4, v5, :cond_1

    const v5, 0x66d24d52

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "GET_PREVIOUS_STATE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "PROCESS_EVENT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v7

    goto :goto_0

    :cond_2
    const-string v4, "GET_CURRENT_STATE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v6

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->getPreviousState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    move v0, v6

    const-string v4, "KEY_STATE"

    invoke-virtual {v1}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_1
    const-string v1, "KEY_DUAL_DAR_USER_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/ddar/fsm/StateMachineImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    move v0, v6

    const-string v4, "KEY_STATE"

    invoke-virtual {v1}, Lcom/samsung/android/knox/ddar/fsm/State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "dual_dar_response"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->processEvent(Landroid/os/Bundle;)Z

    move-result v1

    move v0, v1

    const-string/jumbo v1, "dual_dar_response"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_3
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/DualDARController;->onDualDarStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)Z

    return-void
.end method

.class Lcom/samsung/android/friends/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IInterface;

.field private final mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    new-instance v0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient$1;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method private closedForced()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;->setContPreserved(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->close()V

    return-void
.end method

.method private getService()Landroid/os/IInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAlive()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;

    invoke-interface {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;->closeable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AgentSvcClient"

    const-string v2, "close - connection is remained"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "AgentSvcClient"

    const-string v2, "close"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    iput-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    :goto_1
    return-void
.end method

.method connect()Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AgentSvcClient"

    const-string v3, "FSvc is already connected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1

    :cond_0
    const-string v0, "AgentSvcClient"

    const-string v3, "Connection of FSvs is invalid"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->closedForced()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.mateagent"

    const-string v4, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const-string v5, "SYSTEM"

    invoke-static {v5}, Lcom/samsung/android/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v3, v0, v4, v1, v5}, Lcom/samsung/android/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-direct {p0, v3}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "AgentSvcClient"

    const-string v4, "bound but binder is null"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    const-string v3, "AgentSvcClient"

    const-string v4, "failed to bind FSvc"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->closedForced()V

    const-string v1, "AgentSvcClient"

    const-string/jumbo v3, "not connected"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_4
    return v1
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeSysAction(ILandroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

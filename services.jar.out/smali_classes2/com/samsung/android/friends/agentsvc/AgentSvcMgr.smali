.class public Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

.field private final mCompName:Landroid/content/ComponentName;

.field private mContPreserved:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabled:Z

.field private final mLockCont:Ljava/lang/Object;

.field private final mLogger:Lcom/samsung/android/friends/common/Logger;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/common/Logger;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    iput-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    iput-object p2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    new-instance v0, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    iput-object p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.mateagent"

    const-string v2, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    return-void
.end method

.method private changeRefCount(Z)I
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private existAgentSvc()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method private getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "AgentSvcMgr"

    const-string/jumbo v2, "no FSvc"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContPreserved()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRefCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetRefCount()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeable()Z
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v2

    const-string v3, "AgentSvcMgr"

    const-string v4, "closeable %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    move v0, v7

    nop

    :cond_0
    return v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "keepConnectionState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getRefCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v1}, Lcom/samsung/android/friends/agentsvc/AgentSvcClient;->close()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return v0
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v3, "AgentSvcMgr"

    const-string/jumbo v4, "skipped action 0x%x - app cannot start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x2

    move v3, v0

    move-object v0, v1

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v4, :cond_4

    :try_start_1
    const-string v5, "AgentSvcMgr"

    const-string v6, "FSvc is connected"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v4, p1, p2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :catchall_0
    move-exception v5

    move v6, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v6, "AgentSvcMgr"

    const-string v7, "failed to connect FSvc"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :goto_0
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    move-object v9, v6

    move v6, v3

    move-object v3, v5

    move-object v5, v9

    :goto_1
    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    :try_start_6
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_7
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;->close()V

    :cond_7
    :goto_2
    throw v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    move v3, v6

    goto :goto_6

    :catch_2
    move-exception v4

    move v3, v6

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v4

    :goto_3
    :try_start_8
    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    nop

    if-gtz v3, :cond_2

    :goto_5
    return-object v0

    :goto_6
    add-int/lit8 v3, v3, -0x1

    throw v1
.end method

.method public setContPreserved(Z)V
    .locals 5

    const-string v0, "AgentSvcMgr"

    const-string/jumbo v1, "setContPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->resetRefCount()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return-void
.end method

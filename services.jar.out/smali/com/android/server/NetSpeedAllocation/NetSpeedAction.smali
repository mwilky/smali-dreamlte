.class public Lcom/android/server/NetSpeedAllocation/NetSpeedAction;
.super Ljava/lang/Object;
.source "NetSpeedAction.java"


# static fields
.field private static final IN_ORDER:Ljava/lang/String; = "limit"

.field public static final SPEED_UNIT:Ljava/lang/String; = "kb/s"

.field private static final TAG:Ljava/lang/String; = "NetSpeedAction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

.field private mNwService:Landroid/os/INetworkManagementService;

.field final mRulesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method


# virtual methods
.method public enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NetSpeedAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit app uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "current speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "limit speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kb/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setNetSpeedLimit(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getNetSpeedLimitStats(I)[Ljava/lang/String;
    .locals 6

    const-string v0, "NetSpeedAction"

    const-string/jumbo v1, "getNetSpeedLimitStats start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getAdaptiveSpeedLimitNetworkStats(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "NetSpeedAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNetSpeedLimitStats IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    const-string v3, "NetSpeedAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNetSpeedLimitStats IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    nop

    :goto_1
    move-object v1, v2

    :try_start_2
    monitor-exit v0

    return-object v1

    :goto_2
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "NetSpeedAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release app uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "current speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "limit speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getNetSpeedLimitStats(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-object v3, v0, v2

    iput-object v3, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    aget-object v3, v0, v1

    iput-object v3, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->add(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)V

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "kb/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setNetSpeedLimit(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_1
    return v2
.end method

.method public releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "NetSpeedAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release app uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "current speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "limit speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getNetSpeedLimitStats(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-object v3, v0, v2

    iput-object v3, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    aget-object v3, v0, v1

    iput-object v3, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    :cond_0
    iput-object p3, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->add(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)V

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "kb/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setNetSpeedLimit(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_1
    return v2
.end method

.method public setNetSpeedLimit(ILjava/lang/String;Z)Z
    .locals 5

    const-string v0, "NetSpeedAction"

    const-string/jumbo v1, "setAdaptiveSpeedLimit start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "limit"

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4, p2, p3}, Landroid/os/INetworkManagementService;->setAdaptiveSpeedLimitRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    throw v3

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v1, 0x0

    :goto_0
    nop

    monitor-exit v2

    return v1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public updateLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "NetSpeedAction"

    const-string v1, "Update Limit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Update Limit"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V

    :cond_0
    return-void
.end method
